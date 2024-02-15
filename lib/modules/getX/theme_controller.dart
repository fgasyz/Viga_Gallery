import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../models/theme_model.dart';

class ThemeController extends GetxController {
  var themeModel = ThemeModel(theme: ThemeMode.system);
  GetStorage box = GetStorage();

  getCurrentTheme() {
    var currentTheme = box.read('theme') ?? 'system';
    themeModel.theme = ThemeMode.values
        .firstWhere((element) => element.name.toString() == currentTheme);
    Get.changeThemeMode(themeModel.theme);
    update();
  }

  setCurrentTheme(ThemeMode themeMode) async {
    Get.changeThemeMode(themeMode);
    themeModel.theme = themeMode;
    box.write('theme', themeModel.theme.toString().split('.')[1]);
    update();
  }
}
