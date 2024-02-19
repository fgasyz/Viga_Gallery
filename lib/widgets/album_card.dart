import 'package:flutter/material.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:get/get.dart';
import '../modules/getX/album_controller.dart';
import '../constants/route_path.dart';

class AlbumCard extends StatelessWidget {
  final double height;
  final double width;
  final double ratio;
  AlbumCard(
      {required this.height,
      required this.width,
      required this.ratio,
      Key? key})
      : super(key: key);
  final albumController = Get.put(AlbumController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => GridView.count(
            childAspectRatio: ratio,
            crossAxisSpacing: 7,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: [
              ...?albumController.albumModel.value.albums
                  ?.map((album) => GestureDetector(
                      onTap: () {
                        albumController.setMedia(album);
                        navigator?.pushNamed(RoutePath.albumDetail);
                      },
                      child: SizedBox(
                          height: height,
                          width: width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: FadeInImage(
                                      fit: BoxFit.fitWidth,
                                      placeholder:
                                          MemoryImage(kTransparentImage),
                                      image: AlbumThumbnailProvider(
                                          album: album, highQuality: true))),
                              Text('${album.name}'),
                              Text(
                                '(${album.count}) items',
                                style: Theme.of(context).textTheme.bodySmall,
                              )
                            ],
                          ))))
            ]));
  }
}
