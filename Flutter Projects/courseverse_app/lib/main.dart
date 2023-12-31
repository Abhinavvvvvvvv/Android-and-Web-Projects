import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Screens/splashScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Courseverse',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: SplashScreen());
  }
}
