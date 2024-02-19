import 'package:flutter/material.dart';

class PreviewBottomBar extends StatelessWidget {
  const PreviewBottomBar({required this.maxWidth, Key? key}) : super(key: key);
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxWidth,
      child: Container(
          margin: const EdgeInsets.all(0),
          color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
                tooltip: 'tambah favorite',
                icon: Icon(Icons.favorite_border,
                    color: Theme.of(context).iconTheme.color),
                onPressed: () {}),
            IconButton(
                tooltip: 'berbagi',
                icon:
                    Icon(Icons.share, color: Theme.of(context).iconTheme.color),
                onPressed: () {}),
            IconButton(
                tooltip: 'ubah',
                icon:
                    Icon(Icons.edit, color: Theme.of(context).iconTheme.color),
                onPressed: () {}),
            IconButton(
                tooltip: 'info file',
                icon:
                    Icon(Icons.info, color: Theme.of(context).iconTheme.color),
                onPressed: () {}),
          ])),
    );
  }
}
