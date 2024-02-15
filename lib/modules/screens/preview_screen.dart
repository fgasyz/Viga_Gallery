import 'package:flutter/material.dart';

class PreviewScreen extends StatelessWidget {
  const PreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) => Center(
              child: Container(
                  height: 250,
                  width: constraints.maxWidth,
                  color: Colors.yellow))),
    );
  }
}
