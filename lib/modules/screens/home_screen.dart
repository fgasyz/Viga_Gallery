import 'package:flutter/material.dart';
import '../../widgets/custom_filter_dialog.dart';
import '../../widgets/album_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Viga Gallery'),
          actions: [
            FittedBox(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (builder) => const CustomFilterDialog());
                    },
                    icon: const Icon(Icons.swap_horiz)),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/settings');
                    },
                    icon: const Icon(Icons.more_horiz))
              ],
            ))
          ],
        ),
        body: RefreshIndicator(onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
          return;
        }, child: LayoutBuilder(builder: (context, constraints) {
          double gridWidth = (constraints.maxWidth - 20) / 3;
          double gridHeight = gridWidth + 33;
          double ratio = gridWidth / gridHeight;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              childAspectRatio: ratio,
              crossAxisSpacing: 7,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: List.generate(
                  100,
                  (index) => AlbumCard(
                        height: constraints.maxHeight,
                        width: constraints.maxWidth,
                      )),
            ),
          );
        })),
        floatingActionButton: FloatingActionButton.small(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          onPressed: () {},
          child: Stack(
            children: [
              const Align(
                  child: Icon(
                Icons.mail,
                color: Colors.white,
              )),
              Positioned(
                top: 0,
                right: -10,
                child: SizedBox(
                    height: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text(
                        '15',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Colors.white),
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
