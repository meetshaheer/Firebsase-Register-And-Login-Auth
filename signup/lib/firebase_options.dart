// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBMJdODNNau76kVYpByDWTvd_oC_pjWxc0',
    appId: '1:165230014794:web:2d713f415d2c09447f11b3',
    messagingSenderId: '165230014794',
    projectId: 'shaheer-2faf6',
    authDomain: 'shaheer-2faf6.firebaseapp.com',
    storageBucket: 'shaheer-2faf6.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDCpAXu_0VpPJn62SjXnkWxU7-6bvrOUM0',
    appId: '1:165230014794:android:043da99fcc022e3c7f11b3',
    messagingSenderId: '165230014794',
    projectId: 'shaheer-2faf6',
    storageBucket: 'shaheer-2faf6.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBd4ByOiQ9-qQkMIWpe-_CcQDCYgS9ix34',
    appId: '1:165230014794:ios:1017906f74b9221d7f11b3',
    messagingSenderId: '165230014794',
    projectId: 'shaheer-2faf6',
    storageBucket: 'shaheer-2faf6.firebasestorage.app',
    iosBundleId: 'com.example.signup',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBd4ByOiQ9-qQkMIWpe-_CcQDCYgS9ix34',
    appId: '1:165230014794:ios:1017906f74b9221d7f11b3',
    messagingSenderId: '165230014794',
    projectId: 'shaheer-2faf6',
    storageBucket: 'shaheer-2faf6.firebasestorage.app',
    iosBundleId: 'com.example.signup',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBMJdODNNau76kVYpByDWTvd_oC_pjWxc0',
    appId: '1:165230014794:web:064c3734254c45057f11b3',
    messagingSenderId: '165230014794',
    projectId: 'shaheer-2faf6',
    authDomain: 'shaheer-2faf6.firebaseapp.com',
    storageBucket: 'shaheer-2faf6.firebasestorage.app',
  );
}
