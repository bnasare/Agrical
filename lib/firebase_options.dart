// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAhJlzAes5c4NxSEkfS-KCNo1_TDezhQMM',
    appId: '1:908628185442:web:203641aa21979364df5c3b',
    messagingSenderId: '908628185442',
    projectId: 'agrical-1',
    authDomain: 'agrical-1.firebaseapp.com',
    storageBucket: 'agrical-1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBtCDMjV8l9XaMweKMX8mgaK7URXnu85yM',
    appId: '1:908628185442:android:950f8c820a4b805bdf5c3b',
    messagingSenderId: '908628185442',
    projectId: 'agrical-1',
    storageBucket: 'agrical-1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD4ydIY6prQDV_aH2VdEsidt6tXIMgGGd4',
    appId: '1:908628185442:ios:02fce1424185f59cdf5c3b',
    messagingSenderId: '908628185442',
    projectId: 'agrical-1',
    storageBucket: 'agrical-1.appspot.com',
    iosClientId: '908628185442-idmm7bl08dmnue0n5fqjjlss6uvuns99.apps.googleusercontent.com',
    iosBundleId: 'com.example.agricalIi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD4ydIY6prQDV_aH2VdEsidt6tXIMgGGd4',
    appId: '1:908628185442:ios:81b3c12a91863197df5c3b',
    messagingSenderId: '908628185442',
    projectId: 'agrical-1',
    storageBucket: 'agrical-1.appspot.com',
    iosClientId: '908628185442-9d90b8lpuir7nn04ni3pt8ptfrpcgj8o.apps.googleusercontent.com',
    iosBundleId: 'com.example.agricalIi.RunnerTests',
  );
}