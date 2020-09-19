import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/app.dart';
import 'package:socialapp/home.dart';
import 'package:socialapp/login.dart';
import 'package:socialapp/reg.dart';
import 'package:socialapp/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "splash",
    routes: {
      "splash": (context) => MySplash(),
      "home": (context) => MyHome(),
      "login": (context) => MyLogin(),
      "app": (context) => MyApp(),
      "reg": (context) => MyRegister(),
      // "loginpage":(context) => MyLogin1(),
    },
  ));
}
