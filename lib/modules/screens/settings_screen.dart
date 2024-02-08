import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan'),
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
                                            'Dapatkan paket premium',
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
                                              .bodySmall,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        'Pelajari lebih lanjut >',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(color: Colors.blue),
                                      )
                                    ],
                                  ),
                                ])),
                      ),
                    ),
                    const SizedBox(height: 10),
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
                                  color: Colors.grey.shade300,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Mode Gelap'),
                                    SizedBox(
                                      height: 30,
                                      child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: Switch(
                                          value: true,
                                          onChanged: (bool value1) {},
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ])),
                    ),
                    const SizedBox(height: 10),
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
                                  color: Colors.grey.shade300,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('versi aplikasi'),
                                    Text('v. 1.0.0'),
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('pengembang aplikasi'),
                                    Text('firga ismayoza'),
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
