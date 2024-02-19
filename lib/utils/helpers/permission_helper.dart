import 'package:permission_handler/permission_handler.dart';

class PermissionHelper {
  static checkStoragePermission() async {
    return await Permission.manageExternalStorage.request().isGranted;
  }

  static checkPhotosPermission() async {
    return await Permission.photos.request().isGranted;
  }

  static checkVideosPermission() async {
    return await Permission.videos.request().isGranted;
  }

  static checkAllPermission() async {
    late dynamic status;
    if (await checkStoragePermission() ||
        await checkPhotosPermission() && await checkVideosPermission()) {
      status = true;
    } else {
      status = false;
    }
    return status;
  }
}
