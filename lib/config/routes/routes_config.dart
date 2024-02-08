import 'package:flutter/material.dart';
import '../../modules/screens/home_screen.dart';
import '../../modules/screens/splash_screen.dart';
import '../../modules/screens/settings_screen.dart';
import '../../modules/screens/album_detail_screen.dart';
import '../../modules/screens/preview_item.dart';

Map<String, Widget Function(BuildContext)> routesConfig = {
  '/': (BuildContext context) => const HomeScreen(),
  '/splashscreen': (BuildContext context) => const SplashScreen(),
  '/settings': (BuildContext context) => const SettingsScreen(),
  '/albumdetail': (BuildContext context) => const AlbumDetailScreen(),
  '/albumdetail/itemview': (BuildContext context) => const PreviewItem(),
};
