import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  const AlbumCard(
      {this.image,
      this.name,
      this.countItem,
      required this.height,
      required this.width,
      Key? key})
      : super(key: key);
  final String? image;
  final String? name;
  final String? countItem;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5)))),
            Text(name ?? 'unnamed album'),
            Text(
              '($countItem)',
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ));
  }
}
