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
    apiKey: 'AIzaSyAF4oT52lVopxw3yEvBolRS5bcdzUCW_0c',
    appId: '1:94791568637:web:04503b16ef00fe7d034294',
    messagingSenderId: '94791568637',
    projectId: 'safe-drive-a2936',
    authDomain: 'safe-drive-a2936.firebaseapp.com',
    storageBucket: 'safe-drive-a2936.appspot.com',
    measurementId: 'G-M806GH3E3C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA1XIzIwN6C1s29DF6gOM33RLpOBlXHOG4',
    appId: '1:94791568637:android:b5bf2e99ddcf393f034294',
    messagingSenderId: '94791568637',
    projectId: 'safe-drive-a2936',
    storageBucket: 'safe-drive-a2936.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7IdnyjPInSUKPAyf8JaGngo1-Wi2Yukw',
    appId: '1:94791568637:ios:a545a2d7288a61ed034294',
    messagingSenderId: '94791568637',
    projectId: 'safe-drive-a2936',
    storageBucket: 'safe-drive-a2936.appspot.com',
    iosBundleId: 'com.example.safedrive',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD7IdnyjPInSUKPAyf8JaGngo1-Wi2Yukw',
    appId: '1:94791568637:ios:82f4ede3e0c32712034294',
    messagingSenderId: '94791568637',
    projectId: 'safe-drive-a2936',
    storageBucket: 'safe-drive-a2936.appspot.com',
    iosBundleId: 'com.example.safedrive.RunnerTests',
  );
}
