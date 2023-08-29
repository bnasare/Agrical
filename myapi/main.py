from fastapi import FastAPI, File, UploadFile
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import JSONResponse
import uvicorn
import io
import numpy as np
import tensorflow as tf

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)

# # Load the TensorFlow model
# model_path = r'/Users/alexanderboakye/Desktop/Projects/Agrical/myapi/fruit_model.tflite'
# interpreter = tf.lite.Interpreter(model_path=model_path)
# interpreter.allocate_tensors()

# Creating parameters for loader
batch_size = 32
img_height = 180
img_width = 180

# # Get input and output details from the model
# input_details = interpreter.get_input_details()
# output_details = interpreter.get_output_details()

# Creating parameters for loader
batch_size = 32
img_height = 180
img_width = 180

# Define the class labels dictionary
labels = {
    1: "Ripe_banana",
    2: "Ripe_oranges",
    3: "Ripe_tomatoes",
    4: "Rotten_banana",
    5: "Unripe_banana",
}

# Define the API route
@app.post("/predict/")
async def predict_image(file: UploadFile = File(...)):
    try:
        # Read the image data from the request
        contents = await file.read()

        # # Process the image data
        # image = Image.open(io.BytesIO(contents))  # Correct usage of Image.open
        image = io.BytesIO(contents)  # Correct usage of Image.open

        class_names= ["Ripe_banana", "Ripe_oranges","Ripe_tomatoes","Rotten_banana", "Unripe_banana"]

        img = tf.keras.utils.load_img(image, target_size=(img_height, img_width))    
        img_array = tf.keras.utils.img_to_array(img)
        img_array = tf.expand_dims(img_array, 0)
        loaded_model = tf.keras.models.load_model('/Users/alexanderboakye/Desktop/Projects/Agrical/myapi/fruit_model.h5')
        predictions = loaded_model.predict(img_array)

        score = tf.nn.softmax(predictions[0])

        predicted_label = class_names[np.argmax(score)]
        accuracy = 100 * np.max(score)

        return {"predicted_label": predicted_label}

    except Exception as e:
        return {"error": str(e)}
    

    

uvicorn.run(app, port=8000, host='0.0.0.0')