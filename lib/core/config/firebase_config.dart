import 'package:firebase_core/firebase_core.dart';

Future<void> configFirebase() async {
  await Firebase.initializeApp();
}
