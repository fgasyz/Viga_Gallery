import 'package:flutter/material.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'package:transparent_image/transparent_image.dart';
import '../modules/getX/album_controller.dart';
import 'package:get/get.dart';

class PreviewPhoto extends StatelessWidget {
  PreviewPhoto(
      {required this.medium,
      required this.maxHeight,
      required this.maxWidth,
      Key? key})
      : super(key: key);
  final albumController = Get.put(AlbumController());
  final Medium medium;
  final double maxHeight;
  final double maxWidth;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
          width: maxWidth,
          child: FadeInImage(
            fit: BoxFit.cover,
            placeholder: MemoryImage(kTransparentImage),
            image:
                PhotoProvider(mediumId: medium.id, mimeType: medium.mimeType),
          )),
    );
  }
}
