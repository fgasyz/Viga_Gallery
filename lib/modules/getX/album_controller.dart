import 'package:get/get.dart';
import '../models/album_model.dart';
import 'package:photo_gallery/photo_gallery.dart';
import '../../utils/helpers/permission_helper.dart';

class AlbumController extends GetxController {
  var albumModel = AlbumModel().obs;
  var listAlbum;

  @override
  void onInit() {
    PermissionHelper.checkAllPermission();
    setAlbums();
    super.onInit();
  }

  setAlbums() async {
    listAlbum = await PhotoGallery.listAlbums();
    albumModel.update((data) {
      data?.albums = listAlbum;
      data?.count = listAlbum.length;
    });
  }

  get albums => albumModel.value.albums;
}
