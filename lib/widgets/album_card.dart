import 'package:flutter/material.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'package:transparent_image/transparent_image.dart';

Widget albumCard(
    {required BuildContext context,
    required Album album,
    required double height,
    required double width}) {
  return SizedBox(
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: FadeInImage(
                  fit: BoxFit.fitWidth,
                  placeholder: MemoryImage(kTransparentImage),
                  image:
                      AlbumThumbnailProvider(album: album, highQuality: true))),
          Text(album.name ?? 'unnamed album'),
          Text(
            '(${album.count}) items',
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ));
}
