import 'package:flutter/material.dart';
import 'package:interior_designer/pages/splash_screen.dart';
import 'package:interior_designer/resources/themes.dart';
import 'package:interior_designer/resources/utiles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppUtiles.AppName,
      theme: AppTheme().lightTheme,
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

