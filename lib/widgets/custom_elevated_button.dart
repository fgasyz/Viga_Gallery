import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {required this.title,
      this.icon,
      this.breadcumb,
      required this.onCallback,
      Key? key})
      : super(key: key);
  final String title;
  final IconData? icon;
  final Widget? breadcumb;
  final Function onCallback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          onCallback();
        },
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
            backgroundColor: Theme.of(context).buttonTheme.colorScheme?.primary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                icon != null
                    ? Icon(icon, color: Theme.of(context).iconTheme.color)
                    : Container(),
                Container(child: breadcumb),
              ],
            ),
            const SizedBox(width: 15),
            Text(title,
                style: Theme.of(context)
                    .textTheme
                    .copyWith(bodyMedium: const TextStyle(color: Colors.white))
                    .bodyMedium)
          ],
        ));
  }
}
