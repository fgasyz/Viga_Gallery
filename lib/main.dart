import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../modules/getX/theme_controller.dart';
import './config/themes/light_theme.dart';
import './config/themes/dark_theme.dart';
import './config/routes/routes_config.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<MyApp> {
  late ThemeController themeController;

  @override
  void initState() {
    super.initState();
    themeController = Get.put(ThemeController());
    themeController.getCurrentTheme();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme(),
      darkTheme: darkTheme(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/home',
      themeMode: themeController.themeModel.theme,
      routes: routesConfig,
    );
  }
}
