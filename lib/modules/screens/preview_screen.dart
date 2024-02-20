import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../modules/getX/album_controller.dart';
import '../../widgets/preview_bottom_bar.dart';
import '../../widgets/preview_photo.dart';

class PreviewScreen extends StatelessWidget {
  PreviewScreen({Key? key}) : super(key: key);
  final albumController = Get.put(AlbumController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) => Center(
                child: SizedBox(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  child: Stack(
                    children: [
                      PreviewPhoto(
                          medium: Get.arguments,
                          maxWidth: constraints.maxWidth,
                          maxHeight: constraints.maxHeight),
                      Positioned(
                        top: 0,
                        child: SizedBox(
                          width: constraints.maxWidth,
                          child: Container(
                              margin: const EdgeInsets.all(0),
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.3),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        IconButton(
                                            tooltip: 'kembali',
                                            icon: const Icon(Icons.arrow_back),
                                            onPressed: () {
                                              navigator?.pop(context);
                                            }),
                                        SizedBox(
                                            width: 150,
                                            child: Text(
                                              '${Get.arguments.filename}',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .copyWith(
                                                      bodySmall:
                                                          const TextStyle(
                                                              color:
                                                                  Colors.white))
                                                  .bodySmall,
                                            ))
                                      ],
                                    ),
                                    IconButton(
                                        tooltip: 'rotasi file',
                                        icon: const Icon(
                                            Icons.rotate_90_degrees_ccw,
                                            size: 21),
                                        onPressed: () {}),
                                  ])),
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          child:
                              PreviewBottomBar(maxWidth: constraints.maxWidth))
                    ],
                  ),
                ),
              )),
    ));
  }
}
