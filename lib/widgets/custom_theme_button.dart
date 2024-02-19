import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../modules/getX/theme_controller.dart';

class CustomThemeButton extends StatelessWidget {
  CustomThemeButton(
      {required this.title,
      required this.icons,
      required this.themeModeValue,
      Key? key})
      : super(key: key);
  final String title;
  final IconData icons;
  final ThemeMode themeModeValue;
  final themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: GetBuilder<ThemeController>(
          builder: (builder) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context)
                        .colorScheme
                        .background
                        .withOpacity(0.5),
                    splashFactory: NoSplash.splashFactory,
                    shadowColor: Colors.transparent,
                    enableFeedback: false,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () {
                  themeController.setCurrentTheme(themeModeValue);
                },
                child: Row(
                  children: [
                    CircleAvatar(maxRadius: 15, child: Icon(icons, size: 16)),
                    const SizedBox(width: 10),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
              )),
    );
  }
}
