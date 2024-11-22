import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

import '../environment/environment.dart';

Future<void> configFirebase() async {
  if (Platform.isAndroid) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: Environment.apiKeyAndroid,
      appId: Environment.appIdAndroid,
      messagingSenderId: Environment.messagingSenderIdAndroid,
      projectId: Environment.projectIdAndroid,
      storageBucket: Environment.storageBucketAndroid,
    ));
  } else {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: Environment.apiKeyIos,
      appId: Environment.appIdIos,
      messagingSenderId: Environment.messagingSenderIdIos,
      projectId: Environment.projectIdIos,
      storageBucket: Environment.storageBucketIos,
    ));
  }
}


