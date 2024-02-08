import 'package:flutter/material.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xff61677A)),
      buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xff61677A),
              primary: const Color(0xff61677A))),
      dialogTheme: const DialogTheme(
          titleTextStyle: TextStyle(fontSize: 16),
          contentTextStyle: TextStyle(color: Colors.white)),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xff272829),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 16),
          actionsIconTheme: IconThemeData(color: Colors.white)),
      brightness: Brightness.light);
}
