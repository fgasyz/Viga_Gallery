import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viga_galery/modules/getX/album_controller.dart';
import 'package:viga_galery/widgets/custom_text_field.dart';
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
        title:
            const Text('VIGA', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          FittedBox(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  IconButton(
                      tooltip: 'pemberitahuan',
                      onPressed: () {},
                      icon: const Icon(Icons.notifications)),
                  const Positioned(
                      top: 12,
                      right: 15,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        maxRadius: 5,
                      ))
                ],
              ),
              IconButton(
                  tooltip: 'kamera',
                  onPressed: () {},
                  icon: const Icon(Icons.photo_camera)),
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
                                  Expanded(
                                      child: CustomElevatedButton(
                                    onCallback: () {},
                                    title: 'Ditandai',
                                    icon: Icons.bookmark,
                                    breadcumb: const CircleAvatar(
                                      backgroundColor: Colors.green,
                                      maxRadius: 5,
                                    ),
                                  )),
                                  SizedBox(width: constraints.maxWidth * 0.05),
                                  Expanded(
                                      child: CustomElevatedButton(
                                          onCallback: () {
                                            Get.defaultDialog(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 10),
                                                radius: 5,
                                                title: 'Tambah Album',
                                                titleStyle: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge,
                                                titlePadding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 5),
                                                content: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const SizedBox(height: 10),
                                                    const CustomTextField(),
                                                    const SizedBox(height: 10),
                                                    CustomElevatedButton(
                                                        title: 'Buat',
                                                        onCallback: () {})
                                                  ],
                                                ));
                                          },
                                          title: 'Buat Album',
                                          icon: Icons.library_add)),
                                ],
                              ),
                            )
                          : Container())),
                ],
              )),
    );
  }
}
