import 'package:firebase_core/firebase_core.dart';

Future<void> configFirebase() async {
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: 'apikey',
    appId: 'appId',
    messagingSenderId: 'messagingSenderId',
    projectId: 'projectId',
    storageBucket: 'storageBucket',
  ));
}
