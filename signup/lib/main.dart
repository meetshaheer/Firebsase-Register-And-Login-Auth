import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:signup/firebase_options.dart';
import 'package:signup/login.dart';
import 'package:signup/signup.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LogIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}
