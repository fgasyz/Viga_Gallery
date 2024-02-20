import 'package:flutter/material.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 38, 53, 100)),
      buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 38, 53, 100),
              primary: const Color.fromARGB(255, 38, 53, 100))),
      dialogTheme: const DialogTheme(
          titleTextStyle: TextStyle(fontSize: 16),
          contentTextStyle: TextStyle(color: Colors.white)),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromARGB(255, 38, 53, 100),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 16),
          actionsIconTheme: IconThemeData(color: Colors.white)),
      brightness: Brightness.light,
      cardTheme: CardTheme(
          color: Colors.white,
          shadowColor: Colors.white,
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
      dividerTheme: DividerThemeData(
        thickness: 0.8,
        color: Colors.grey.withOpacity(0.8),
      ),
      iconTheme: const IconThemeData(color: Colors.white, size: 22));
}
