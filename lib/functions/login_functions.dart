import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../presentation/h_screen/h_screen.dart';

void wrongEmailAlert(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      content: SizedBox(
        height: 20,
        child: Center(
          child: Text(
            'The email you entered is invalid.',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
      duration: Duration(seconds: 5),
      margin: EdgeInsets.all(16),
    ),
  );
}

void wrongPasswordAlert(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      content: SizedBox(
        height: 20,
        child: Center(
          child: Text(
            'The password you entered is invalid.',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
      duration: Duration(seconds: 5),
      margin: EdgeInsets.all(16),
    ),
  );
}

void pleaseEnterValidEmailAndPassword(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      content: SizedBox(
        height: 20,
        child: Center(
          child: Text(
            'Please enter your email and password.',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
      duration: Duration(seconds: 5),
      margin: EdgeInsets.all(16),
    ),
  );
}

Future<void> signIn(
  BuildContext context,
  TextEditingController emailController,
  TextEditingController passwordController,
) async {
  showDialog(
    context: context,
    builder: (context) {
      return const Center(
        child: CircularProgressIndicator(
          color: Colors.red,
        ),
      );
    },
  );

  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
    User? user = userCredential.user;

    if (user != null) {
      await user.reload();

      if (user.emailVerified) {
        Navigator.pop(context);
        // ignore: use_build_context_synchronously
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HScreen(),
          ),
        );
      } else {
        Navigator.pop(context);
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            content: SizedBox(
              height: 20,
              child: Center(
                child: Text(
                  'Please verify your email before logging in',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            duration: Duration(seconds: 5),
            margin: EdgeInsets.all(16),
          ),
        );
      }
    }
  } on FirebaseAuthException catch (e) {
    Navigator.pop(context);

    if (e.code == 'user-not-found') {
      wrongEmailAlert(context);
    } else if (e.code == 'wrong-password') {
      wrongPasswordAlert(context);
    } else {
      pleaseEnterValidEmailAndPassword(context);
    }
  }
}
