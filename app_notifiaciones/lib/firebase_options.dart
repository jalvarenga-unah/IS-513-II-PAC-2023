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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAiCuGmrSOZYlBWLs_3E3PNJtg0LWtLNS0',
    appId: '1:133676909368:android:9f331d9e3f4b561c4277cd',
    messagingSenderId: '133676909368',
    projectId: 'lp-unah-pac-3',
    databaseURL: 'https://lp-unah-pac-3-default-rtdb.firebaseio.com',
    storageBucket: 'lp-unah-pac-3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAoK2nEoQkreAw5apc8_T1xuu33edBXCoU',
    appId: '1:133676909368:ios:8e2d384b127ad7054277cd',
    messagingSenderId: '133676909368',
    projectId: 'lp-unah-pac-3',
    databaseURL: 'https://lp-unah-pac-3-default-rtdb.firebaseio.com',
    storageBucket: 'lp-unah-pac-3.appspot.com',
    iosClientId: '133676909368-gcii03tmt3gnh2bp1gf7frl3krtn3b82.apps.googleusercontent.com',
    iosBundleId: 'com.example.appNotifiaciones',
  );
}