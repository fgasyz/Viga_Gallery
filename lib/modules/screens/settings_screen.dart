import 'package:flutter/material.dart';
import 'package:viga_galery/widgets/custom_bottom_sheet.dart';
import '../../widgets/custom_theme_button.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan'),
        leading: IconButton(
            tooltip: 'kembali',
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: LayoutBuilder(
          builder: (context, constraints) => Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    Card(
                      margin: const EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Beralih paket premium',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                          const Icon(
                                            Icons.workspace_premium_rounded,
                                            color: Colors.deepOrange,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      SizedBox(
                                        width: constraints.maxWidth * 0.72,
                                        child: Text(
                                          'Dengan beralih ke paket premium anda dapat menikmati fitur yang tidak ada di paket biasa.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      SizedBox(
                                          height: 20,
                                          child: TextButton(
                                              style: const ButtonStyle(
                                                  padding:
                                                      MaterialStatePropertyAll(
                                                          EdgeInsets.zero),
                                                  overlayColor:
                                                      MaterialStatePropertyAll(
                                                          Colors.transparent)),
                                              onPressed: () {
                                                Get.bottomSheet(
                                                    CustomBottomSheet(
                                                        maxHeight: constraints
                                                            .maxHeight,
                                                        maxWidth: constraints
                                                            .maxWidth),
                                                    backgroundColor:
                                                        Theme.of(context)
                                                            .cardColor,
                                                    shape: const RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        5),
                                                                topRight: Radius
                                                                    .circular(
                                                                        5))),
                                                    isScrollControlled: true);
                                              },
                                              child: Text(
                                                'Pelajari lebih lanjut >',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(
                                                        color: Colors.blue),
                                              )))
                                    ],
                                  ),
                                ])),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Card(
                      margin: const EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Tampilan',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                const Divider(),
                                Text(
                                  'Pilihan tema :',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                const SizedBox(height: 10),
                                Column(
                                  children: [
                                    CustomThemeButton(
                                        title: 'sistem',
                                        icons: Icons.smartphone,
                                        themeModeValue: ThemeMode.system),
                                    CustomThemeButton(
                                        title: 'terang',
                                        icons: Icons.light_mode,
                                        themeModeValue: ThemeMode.light),
                                    CustomThemeButton(
                                        title: 'gelap',
                                        icons: Icons.dark_mode,
                                        themeModeValue: ThemeMode.dark)
                                  ],
                                )
                              ])),
                    ),
                    const SizedBox(height: 5),
                    Card(
                      margin: const EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Info Aplikasi',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                const Divider(),
                                const SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Versi aplikasi saat ini',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall),
                                    Text(
                                      'v. 1.0.0',
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Pengembang aplikasi',
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                    Text(
                                      'firga ismayoza',
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ],
                                )
                              ])),
                    ),
                    const SizedBox(height: 5),
                    Card(
                      margin: const EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Info Tambahan',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                const Divider(),
                                const SizedBox(height: 5),
                                Text('Nilai Kami',
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                                Text(
                                  'Kebijakan Privasi',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ])),
                    )
                  ],
                ),
              )),
    );
  }
}
