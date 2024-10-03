import 'package:firebase_core/firebase_core.dart';
import 'package:fitway_app/firebase_options.dart';
import 'package:fitway_app/myapp.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}
