import 'package:flutter/material.dart';
import './config/themes/light_theme.dart';
import './config/themes/dark_theme.dart';
import './config/routes/routes_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme(),
      debugShowCheckedModeBanner: false,
      darkTheme: darkTheme(),
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: routesConfig,
    );
  }
}
