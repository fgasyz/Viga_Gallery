import 'package:flutter/material.dart';
import 'package:viga_galery/modules/getX/album_controller.dart';
import '../../constants/route_path.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';

class AlbumDetailScreen extends StatelessWidget {
  AlbumDetailScreen({Key? key}) : super(key: key);
  final albumController = Get.put(AlbumController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${albumController.albumModel.value.currentAlbum}'),
                Text(
                  '${albumController.albumModel.value.mediumCount} items',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.white),
                ),
              ],
            )),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        double gridWidth = (constraints.maxWidth - 20) / 3;
        double gridHeight = gridWidth + 10;
        double ratio = gridWidth / gridHeight;
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(() => GridView.count(
                  childAspectRatio: ratio,
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 7,
                  crossAxisCount: 3,
                  children: [
                    ...?albumController.albumModel.value.mediums?.map((medium) {
                      return GestureDetector(
                        onTap: () => navigator?.pushNamed(RoutePath.itemView,
                            arguments: medium),
                        child: FadeInImage(
                            fit: BoxFit.cover,
                            placeholder: MemoryImage(kTransparentImage),
                            image: ThumbnailProvider(
                                mediumId: medium.id,
                                mediumType: medium.mediumType,
                                highQuality: true)),
                      );
                    })
                  ],
                )));
      }),
    );
  }
}
