import 'package:get/get.dart';
import '../models/album_model.dart';
import 'package:photo_gallery/photo_gallery.dart';
import '../../utils/helpers/permission_helper.dart';

class AlbumController extends GetxController {
  var albumModel = AlbumModel().obs;
  dynamic listAlbum;
  dynamic listMedia;

  @override
  void onInit() {
    PermissionHelper.checkAllPermission();
    setAlbums();
    super.onInit();
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
