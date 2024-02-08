import 'package:flutter/material.dart';
import '../widgets/custom_elevated_button.dart';

class CustomFilterDialog extends StatelessWidget {
  const CustomFilterDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
        height: 130,
        padding: const EdgeInsets.all(10),
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) =>
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Urutkan album',
                      style: Theme.of(context).dialogTheme.titleTextStyle,
                    ),
                    CustomElevatedButton(
                      label: 'Urutkan',
                      width: constraints.maxWidth,
                      backgroundColor:
                          Theme.of(context).buttonTheme.colorScheme!.primary,
                      onCallback: () {},
                    ),
                  ],
                )),
      ),
    );
  }
}
