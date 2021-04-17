import 'package:flutter/material.dart';
import 'package:proyecto_deliviery_app/presentantion/login/login_scren.dart';
import 'package:proyecto_deliviery_app/presentantion/splash/splash_screen.dart';
import 'package:proyecto_deliviery_app/presentantion/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ligthTheme,
      home: LoginScreen(),
    );
  }
}
