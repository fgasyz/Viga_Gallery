import 'package:flutter/material.dart';
import '../../constants/route_path.dart';

class AlbumDetailScreen extends StatelessWidget {
  const AlbumDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama album'),
            Text(
              '0 items',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        double gridWidth = (constraints.maxWidth - 20) / 3;
        double gridHeight = gridWidth + 10;
        double ratio = gridWidth / gridHeight;
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              childAspectRatio: ratio,
              crossAxisSpacing: 7,
              mainAxisSpacing: 7,
              crossAxisCount: 3,
              children: List.generate(
                  10,
                  (int index) => GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, RoutePath.itemView),
                        child: Container(
                            height: ratio, width: ratio, color: Colors.yellow),
                      )),
            ));
      }),
    );
  }
}
