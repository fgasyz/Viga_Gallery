import 'package:flutter/material.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xff272829)),
      buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.black, primary: Colors.black)),
      dialogTheme: const DialogTheme(
          titleTextStyle: TextStyle(fontSize: 16),
          contentTextStyle: TextStyle(color: Colors.white)),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black45,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 16),
          actionsIconTheme: IconThemeData(color: Colors.white)),
      iconTheme: const IconThemeData(color: Colors.white, size: 22),
      cardTheme: CardTheme(
          color: const Color(0xff272829).withOpacity(0.2),
          shadowColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
      dividerTheme: const DividerThemeData(
        thickness: 0.8,
        color: Colors.white,
      ),
      brightness: Brightness.dark);
}
