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
    apiKey: 'AIzaSyAhLNNgaKIXQgoSXXHfc8ta1vl9QJqs-DU',
    appId: '1:129537653067:web:cb66a1c57bcf1a22b3d0ce',
    messagingSenderId: '129537653067',
    projectId: 'instagram-24d3e',
    authDomain: 'instagram-24d3e.firebaseapp.com',
    storageBucket: 'instagram-24d3e.appspot.com',
    measurementId: 'G-BKE6RGRGDT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAfLK0gRTQKT7ZV7eLcDyqDctUjyR15Ngk',
    appId: '1:129537653067:android:1975583cb4d36a22b3d0ce',
    messagingSenderId: '129537653067',
    projectId: 'instagram-24d3e',
    storageBucket: 'instagram-24d3e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBCK78Jqd84uyL0Gv-K82NHjDv_HC7bYzI',
    appId: '1:129537653067:ios:02cb24d8d15a2c25b3d0ce',
    messagingSenderId: '129537653067',
    projectId: 'instagram-24d3e',
    storageBucket: 'instagram-24d3e.appspot.com',
    iosClientId: '129537653067-dmhsf1nsc3s9gj28q4cd6otj60r60l3l.apps.googleusercontent.com',
    iosBundleId: 'com.example.instagramFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBCK78Jqd84uyL0Gv-K82NHjDv_HC7bYzI',
    appId: '1:129537653067:ios:02cb24d8d15a2c25b3d0ce',
    messagingSenderId: '129537653067',
    projectId: 'instagram-24d3e',
    storageBucket: 'instagram-24d3e.appspot.com',
    iosClientId: '129537653067-dmhsf1nsc3s9gj28q4cd6otj60r60l3l.apps.googleusercontent.com',
    iosBundleId: 'com.example.instagramFirebase',
  );
}