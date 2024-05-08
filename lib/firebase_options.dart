import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBcdIH3WeMr5NO8H0NpW6ECQy2BghJbG98',
    appId: '1:561056426046:web:2436bf04f04eec6d88896f',
    messagingSenderId: '561056426046',
    projectId: 'login-page-34c07',
    authDomain: 'login-page-34c07.firebaseapp.com',
    storageBucket: 'login-page-34c07.appspot.com',
    measurementId: 'G-91FSQTGJH8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBcdIH3WeMr5NO8H0NpW6ECQy2BghJbG98',
    appId: '1:561056426046:android:bfbfa327b84d49ee88896f',
    messagingSenderId: '561056426046',
    projectId: 'login-page-34c07',
    storageBucket: 'login-page-34c07.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBcdIH3WeMr5NO8H0NpW6ECQy2BghJbG98',
    appId: '1:132381301913:ios:7cf4a8a242e6a1ca1eec08',
    messagingSenderId: '132381301913',
    projectId: 'flutterfire-samples',
    storageBucket: 'flutterfire-samples.appspot.com',
    androidClientId: '132381301913-5o1p8r5cr7hbmet7bjtltnk3hiv2eife.apps.googleusercontent.com',
    iosClientId: '132381301913-6ho0d2nv7b9q73ibmtsjq3es09leqbt9.apps.googleusercontent.com',
    iosBundleId: 'com.souvikbiswas.flutterfireExamples',
  );
}
