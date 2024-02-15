import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viga_galery/modules/getX/album_controller.dart';
import '../../widgets/album_card.dart';
import '../../constants/route_path.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final albumController = Get.put(AlbumController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          title: const Text('Viga Gallery'),
          actions: [
            FittedBox(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    tooltip: 'urutkan',
                    onPressed: () {},
                    icon: const Icon(Icons.swap_horiz)),
                IconButton(
                    tooltip: 'pengaturan',
                    onPressed: () {
                      Navigator.pushNamed(context, RoutePath.setting);
                    },
                    icon: const Icon(Icons.more_horiz))
              ],
            ))
          ],
        ),
        body: RefreshIndicator(
            child: LayoutBuilder(builder: (context, constraints) {
          double gridWidth = (constraints.maxWidth - 20) / 3;
          double gridHeight = gridWidth + 33;
          double ratio = gridWidth / gridHeight;
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(() {
                return GridView.count(
                    childAspectRatio: ratio,
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    children: [
                      ...?albumController.albums?.map((album) =>
                          GestureDetector(
                              onTap: () => Navigator.pushNamed(
                                  context, RoutePath.albumDetail,
                                  arguments: album),
                              child: albumCard(
                                context: context,
                                album: album,
                                height: constraints.maxHeight,
                                width: constraints.maxWidth,
                              )))
                    ]);
              }));
        }), onRefresh: () async {
          await albumController.setAlbums();
        }),
        floatingActionButton: FloatingActionButton.small(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          onPressed: () {},
          child: Icon(Icons.add,
              color: Theme.of(context)
                  .iconTheme
                  .copyWith(color: Colors.white)
                  .color),
        ));
  }
}
