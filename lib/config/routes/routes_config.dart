import 'package:flutter/material.dart';
import '../../modules/screens/home_screen.dart';
import '../../modules/screens/settings_screen.dart';
import '../../modules/screens/album_detail_screen.dart';
import '../../modules/screens/preview_screen.dart';
import '../../constants/route_path.dart';

Map<String, Widget Function(BuildContext)> routesConfig = {
  RoutePath.home: (BuildContext context) => HomeScreen(),
  RoutePath.setting: (BuildContext context) => const SettingsScreen(),
  RoutePath.albumDetail: (BuildContext context) => AlbumDetailScreen(),
  RoutePath.itemView: (BuildContext context) => PreviewScreen(),
};
