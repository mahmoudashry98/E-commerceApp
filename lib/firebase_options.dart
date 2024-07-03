// File generated by FlutterFire CLI.
// ignore_for_file: type=lint

import 'package:firebase_core/firebase_core.dart';
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
    apiKey: 'AIzaSyBHmfgcf1wkHI0qLIg7A5oW4lvLfah0ul8',
    appId: '1:856751389874:web:7544bdadabfcb1e87b5dab',
    messagingSenderId: '856751389874',
    projectId: 'e-commerce-c4b1e',
    authDomain: 'e-commerce-c4b1e.firebaseapp.com',
    storageBucket: 'e-commerce-c4b1e.appspot.com',
    measurementId: 'G-YYG8BV4NV3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBN9wZOVOrpw_Mal87ih3fjMtAuEW1VG-Q',
    appId: '1:856751389874:android:7eb1c4ad50d06f727b5dab',
    messagingSenderId: '856751389874',
    projectId: 'e-commerce-c4b1e',
    storageBucket: 'e-commerce-c4b1e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCcN2qOlT4mJSom3_4WaB7WNrc5RWhwLas',
    appId: '1:856751389874:ios:15486de660aaf4587b5dab',
    messagingSenderId: '856751389874',
    projectId: 'e-commerce-c4b1e',
    storageBucket: 'e-commerce-c4b1e.appspot.com',
    androidClientId: '856751389874-ba9ioumas3etju4o3qhgpkeltrqkpqp1.apps.googleusercontent.com',
    iosClientId: '856751389874-mt2ur5b3i75ihc3dgcuavjd88phf86l1.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerceApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCcN2qOlT4mJSom3_4WaB7WNrc5RWhwLas',
    appId: '1:856751389874:ios:15486de660aaf4587b5dab',
    messagingSenderId: '856751389874',
    projectId: 'e-commerce-c4b1e',
    storageBucket: 'e-commerce-c4b1e.appspot.com',
    iosBundleId: 'com.example.ecommerceApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBHmfgcf1wkHI0qLIg7A5oW4lvLfah0ul8',
    appId: '1:856751389874:web:bed06b9c3a754e717b5dab',
    messagingSenderId: '856751389874',
    projectId: 'e-commerce-c4b1e',
    authDomain: 'e-commerce-c4b1e.firebaseapp.com',
    storageBucket: 'e-commerce-c4b1e.appspot.com',
    measurementId: 'G-1WD1VEZC7K',
  );
}