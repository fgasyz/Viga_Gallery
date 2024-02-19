import 'dart:io';
import 'package:get/get.dart';
import '../../modules/models/permission_model.dart';
import '../../utils/helpers/permission_helper.dart';

class PermissionController extends GetxController {
  var status = false.obs;
  var permissionModel = PermissionModel().obs;

  @override
  void onInit() {
    getPermission();
    super.onInit();
  }

  getPermission() async {
    try {
      status.value = await PermissionHelper.checkAllPermission();
      if (status.value) {
        permissionModel.update((value) {
          value?.status = status.value;
        });
      } else {
        permissionModel.update((value) {
          value?.status = status.value;
        });
      }
    } catch (e) {
      exit(0);
    }
  }
}
