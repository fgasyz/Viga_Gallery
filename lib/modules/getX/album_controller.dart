import 'package:get/get.dart';
import '../models/album_model.dart';
import 'package:photo_gallery/photo_gallery.dart';
import './permission_controller.dart';

class AlbumController extends GetxController {
  var albumModel = AlbumModel().obs;
  PermissionController permissionController = Get.find();
  dynamic listAlbum;
  dynamic listMedia;

  @override
  void onInit() {
    super.onInit();
    ever(permissionController.status, (_) => setAlbums());
  }

  setAlbums() async {
    listAlbum = await PhotoGallery.listAlbums();
    albumModel.update((val) {
      val?.albums = listAlbum;
      val?.albumCount = listAlbum.length;
    });
  }

  Future setMedia(Album album) async {
    listMedia = await album.listMedia();
    albumModel.update((val) {
      val?.mediums = listMedia.items;
      val?.mediumCount = listMedia.items.length;
      val?.currentAlbum = album.name ?? 'album tidak dikenal';
    });
  }
}
