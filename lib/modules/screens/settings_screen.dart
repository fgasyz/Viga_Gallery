import 'package:flutter/material.dart';
import '../../constants/route_path.dart';
import '../../widgets/custom_theme_button.dart';

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
                                                .bodyLarge,
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
                                              .bodyMedium,
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
                                                Navigator.pushNamed(context,
                                                    RoutePath.upgradeService);
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
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Divider(
                                  height: 10,
                                  thickness: 0.8,
                                  color: Colors.grey.shade300,
                                ),
                                Text(
                                  'Pilihan tema :',
                                  style: Theme.of(context).textTheme.bodyMedium,
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
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Divider(
                                  height: 10,
                                  thickness: 0.8,
                                  color: Colors.grey.shade300,
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Versi aplikasi saat ini',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium),
                                    Text(
                                      'v. 1.0.0',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Pengembang aplikasi',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                    Text(
                                      'firga ismayoza',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ],
                                )
                              ])),
                    )
                  ],
                ),
              )),
    );
  }
}
