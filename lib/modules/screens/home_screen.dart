import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viga_galery/modules/getX/album_controller.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../modules/getX/permission_controller.dart';
import '../../widgets/album_card.dart';
import '../../constants/route_path.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final permissionController = Get.put(PermissionController());
  final albumController = Get.put(AlbumController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        title: const Row(
          children: [
            Icon(Icons.collections),
            SizedBox(width: 10),
            Text('Viga Gallery')
          ],
        ),
        actions: [
          FittedBox(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  tooltip: 'pemberitahuan',
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_active)),
              IconButton(
                  tooltip: 'urutkan',
                  onPressed: () {},
                  icon: const Icon(Icons.swap_horiz)),
              IconButton(
                  tooltip: 'pengaturan',
                  onPressed: () {
                    navigator?.pushNamed(RoutePath.setting);
                  },
                  icon: const Icon(Icons.more_horiz))
            ],
          ))
        ],
      ),
      body: LayoutBuilder(
          builder: (context, constraints) => Stack(
                children: [
                  Obx(() => Container(
                      child: (permissionController.permissionModel.value.status)
                          ? FutureBuilder(
                              future: albumController.setAlbums(),
                              builder: (context, snapshot) {
                                return RefreshIndicator(child: LayoutBuilder(
                                    builder: (context, constraints) {
                                  double gridWidth =
                                      (constraints.maxWidth - 20) / 3;
                                  double gridHeight = gridWidth + 33;
                                  double ratio = gridWidth / gridHeight;
                                  return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: AlbumCard(
                                          ratio: ratio,
                                          width: gridWidth,
                                          height: gridHeight));
                                }), onRefresh: () async {
                                  await albumController.setAlbums();
                                });
                              })
                          : const Center(
                              child: SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: CircularProgressIndicator())))),
                  Obx(() => Positioned(
                      bottom: 15,
                      child: (permissionController.permissionModel.value.status)
                          ? Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: constraints.maxWidth * 0.05),
                              width: constraints.maxWidth,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Expanded(
                                      child: CustomElevatedButton(
                                          title: 'Buat Album',
                                          icon: Icons.add)),
                                  SizedBox(width: constraints.maxWidth * 0.05),
                                  const Expanded(
                                      child: CustomElevatedButton(
                                    title: 'Ditandai',
                                    icon: Icons.bookmark,
                                  )),
                                ],
                              ),
                            )
                          : Container())),
                ],
              )),
    );
  }
}
