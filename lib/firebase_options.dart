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
    apiKey: 'AIzaSyBIXxQgUPYDU2srK_UpgjiTATON5rrdMd0',
    appId: '1:132381301913:web:f0d0a643bc90bed91eec08',
    messagingSenderId: '132381301913',
    projectId: 'flutterfire-samples',
    authDomain: 'flutterfire-samples.firebaseapp.com',
    storageBucket: 'flutterfire-samples.appspot.com',
    measurementId: 'G-ZK5194H8VH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCBpOCTJvcgHSO1-XDhmGNJ-paLHAAratM',
    appId: '1:132381301913:android:2897b20e4406c6ad1eec08',
    messagingSenderId: '132381301913',
    projectId: 'flutterfire-samples',
    storageBucket: 'flutterfire-samples.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBe_fPPDQTnEfq7ZFKa2kYAdDKkmFIsQI8',
    appId: '1:132381301913:ios:7cf4a8a242e6a1ca1eec08',
    messagingSenderId: '132381301913',
    projectId: 'flutterfire-samples',
    storageBucket: 'flutterfire-samples.appspot.com',
    androidClientId: '132381301913-5o1p8r5cr7hbmet7bjtltnk3hiv2eife.apps.googleusercontent.com',
    iosClientId: '132381301913-6ho0d2nv7b9q73ibmtsjq3es09leqbt9.apps.googleusercontent.com',
    iosBundleId: 'com.souvikbiswas.flutterfireExamples',
  );
}
