import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  primarySwatch: Colors.blue,
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade300,
    primary: Colors.grey.shade200,
    secondary: Colors.grey.shade400,
    inversePrimary: Colors.grey.shade800,
  ),
  textTheme: ThemeData.light().textTheme.apply(
        bodyColor: Colors.grey[800], // Your desired body text color
        displayColor: Colors.black, // Your desired display text color
      ),
  inputDecorationTheme: const InputDecorationTheme(
    hintStyle: TextStyle(color: Colors.grey),
  ),
  searchBarTheme: SearchBarThemeData(
    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
    elevation: MaterialStateProperty.all(0),
    hintStyle: MaterialStateProperty.all(TextStyle(color: Colors.grey[400])),
    textStyle: MaterialStateProperty.all(TextStyle(color: Colors.grey[700])),
  ),
);
