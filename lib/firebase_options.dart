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
    apiKey: 'AIzaSyDnACLjvD0k6MXudBeIPCVqMZ_3Kt75vPM',
    appId: '1:284295654376:web:91928e333870fe39a0125d',
    messagingSenderId: '284295654376',
    projectId: 'testproapp-ba643',
    authDomain: 'testproapp-ba643.firebaseapp.com',
    storageBucket: 'testproapp-ba643.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBiNP6o3sTiSxDXrfQywaKOw3Q3B40gwYk',
    appId: '1:284295654376:android:9d96d74a2a6e452fa0125d',
    messagingSenderId: '284295654376',
    projectId: 'testproapp-ba643',
    storageBucket: 'testproapp-ba643.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBmuLrMfE99mku1ZohvAYqGYKynOO-tEfM',
    appId: '1:284295654376:ios:c385f4a4bfab842fa0125d',
    messagingSenderId: '284295654376',
    projectId: 'testproapp-ba643',
    storageBucket: 'testproapp-ba643.appspot.com',
    iosClientId: '284295654376-fa56lkgfeertqvu6d0bd7ivbsmp0g66k.apps.googleusercontent.com',
    iosBundleId: 'com.example.testProMobileApp',
  );
}
