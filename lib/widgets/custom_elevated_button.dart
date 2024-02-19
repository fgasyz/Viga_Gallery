import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({required this.title, this.icon, Key? key})
      : super(key: key);
  final String title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            backgroundColor: Theme.of(context).buttonTheme.colorScheme?.primary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Theme.of(context).iconTheme.color),
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
