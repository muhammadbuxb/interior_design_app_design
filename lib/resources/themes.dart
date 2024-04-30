import 'package:flutter/material.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
    colorSchemeSeed:Colors.green,
    
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      foregroundColor: Colors.white,
      backgroundColor: Colors.green,
      iconTheme: const IconThemeData(color: Colors.white),
    ),

  );
  ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.black,
      foregroundColor: Colors.green,
      iconTheme: const IconThemeData(color: Colors.white),
    ),
  );
}
