import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'custom_elevated_button.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet(
      {required this.maxHeight, required this.maxWidth, Key? key})
      : super(key: key);

  final double maxHeight;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: maxHeight * 0.78,
      width: maxWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.close, color: Colors.grey),
              )),
          Align(
              child: SizedBox(
                  child: Column(
            children: [
              Text('Pilihan Paket',
                  style: Theme.of(context).textTheme.bodyMedium),
              const Divider()
            ],
          ))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Card(
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 50),
                              child: Text('Rp. 10.000'))),
                      Text('*s/k berlaku',
                          style: Theme.of(context)
                              .textTheme
                              .copyWith(
                                  bodySmall: const TextStyle(
                                      fontSize: 10,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.blue))
                              .bodySmall),
                    ],
                  ),
                  Column(
                    children: [
                      const Card(
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 50),
                              child: Text('Rp. 15.000'))),
                      Text('*s/k berlaku',
                          style: Theme.of(context)
                              .textTheme
                              .copyWith(
                                  bodySmall: const TextStyle(
                                      fontSize: 10,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.blue))
                              .bodySmall)
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Card(
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 50),
                              child: Text('Rp. 30.000'))),
                      Text('*s/k berlaku',
                          style: Theme.of(context)
                              .textTheme
                              .copyWith(
                                  bodySmall: const TextStyle(
                                      fontSize: 10,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.blue))
                              .bodySmall)
                    ],
                  ),
                  Column(
                    children: [
                      const Card(
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 50),
                              child: Text('Rp. 50.000'))),
                      Text('*s/k berlaku',
                          style: Theme.of(context)
                              .textTheme
                              .copyWith(
                                  bodySmall: const TextStyle(
                                      fontSize: 10,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.blue))
                              .bodySmall)
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
              height: maxHeight * 0.15,
              child: Card(
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SingleChildScrollView(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Informasi paket :',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                            '1. lorem ipsum dolor sit amet, consectetur adipiscing elit sed diam nonumy',
                            style: Theme.of(context)
                                .textTheme
                                .copyWith(
                                    bodySmall: const TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                ))
                                .bodySmall),
                        Text(
                            '2. lorem ipsum dolor sit amet, consectetur adipiscing elit sed diam nonumy',
                            style: Theme.of(context)
                                .textTheme
                                .copyWith(
                                    bodySmall: const TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                ))
                                .bodySmall),
                        Text(
                            '2. lorem ipsum dolor sit amet, consectetur adipiscing elit sed diam nonumy',
                            style: Theme.of(context)
                                .textTheme
                                .copyWith(
                                    bodySmall: const TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                ))
                                .bodySmall),
                      ],
                    ))),
              )),
          const SizedBox(height: 5),
          SizedBox(
              height: maxHeight * 0.18,
              child: Card(
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SingleChildScrollView(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Syarat dan Ketentuan :',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                            '1. lorem ipsum dolor sit amet, consectetur adipiscing elit sed diam nonumy',
                            style: Theme.of(context)
                                .textTheme
                                .copyWith(
                                    bodySmall: const TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                ))
                                .bodySmall),
                        Text(
                            '2. lorem ipsum dolor sit amet, consectetur adipiscing elit sed diam nonumy',
                            style: Theme.of(context)
                                .textTheme
                                .copyWith(
                                    bodySmall: const TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                ))
                                .bodySmall),
                        Text(
                            '3. lorem ipsum dolor sit amet, consectetur adipiscing elit sed diam nonumy',
                            style: Theme.of(context)
                                .textTheme
                                .copyWith(
                                    bodySmall: const TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                ))
                                .bodySmall),
                        Text(
                            '4. lorem ipsum dolor sit amet, consectetur adipiscing elit sed diam nonumy',
                            style: Theme.of(context)
                                .textTheme
                                .copyWith(
                                    bodySmall: const TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                ))
                                .bodySmall)
                      ],
                    ))),
              )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomElevatedButton(
                      title: 'Berlangganan', onCallback: () {}))
            ],
          ))
        ],
      ),
    );
  }
}
