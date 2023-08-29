# Connecting to API from external device


1. Run project in conda evironment
```bash
    python main.py
```

2. Search for ip address
```bash
    ip addr
    # under wlp2s0 inet <ip address>
```

3. The url to be access your api becomes `http://<ip address>:8000/predict/`