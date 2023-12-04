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
    apiKey: 'AIzaSyDcewxmBaMEu7eiIDDXJj5gz7cVv5gUg5I',
    appId: '1:230538004567:web:9a66c37040f1f554433b12',
    messagingSenderId: '230538004567',
    projectId: 'voting-app-b9d0f',
    authDomain: 'voting-app-b9d0f.firebaseapp.com',
    storageBucket: 'voting-app-b9d0f.appspot.com',
    measurementId: 'G-QQF41BGFJR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAI7PXod9xH3338MMTbVuGLU5ijtNnopSk',
    appId: '1:230538004567:android:1a56de9262874e3f433b12',
    messagingSenderId: '230538004567',
    projectId: 'voting-app-b9d0f',
    storageBucket: 'voting-app-b9d0f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBRRzpG4JgWWX9Sy9L4MQMtt4IpE8izxME',
    appId: '1:230538004567:ios:9f25cd8bde97165f433b12',
    messagingSenderId: '230538004567',
    projectId: 'voting-app-b9d0f',
    storageBucket: 'voting-app-b9d0f.appspot.com',
    iosBundleId: 'com.example.votingApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBRRzpG4JgWWX9Sy9L4MQMtt4IpE8izxME',
    appId: '1:230538004567:ios:fa54dcc5f07735af433b12',
    messagingSenderId: '230538004567',
    projectId: 'voting-app-b9d0f',
    storageBucket: 'voting-app-b9d0f.appspot.com',
    iosBundleId: 'com.example.votingApp.RunnerTests',
  );
}