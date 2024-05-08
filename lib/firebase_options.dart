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
    appId: '1:561056426046:ios:a03c35b51cd87cb088896f',
    messagingSenderId: '561056426046',
    projectId: 'login-page-34c07',
    storageBucket: 'login-page-34c07.appspot.com',
    androidClientId: '561056426046-sb39q5tsn7tbo6plb3lrf7dj1ue077ad.apps.googleusercontent.com',
    iosClientId: '561056426046-pjk8httek0l7barq4nqb18l7r3s2pc24.apps.googleusercontent.com',
    iosBundleId: 'com.benflorence.flutter.sample',
  );
}
