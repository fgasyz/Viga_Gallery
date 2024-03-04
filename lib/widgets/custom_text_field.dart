import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: TextField(
      maxLength: 15,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        hintText: 'Masukkan nama album',
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        border: const OutlineInputBorder(),
      ),
    ));
  }
}
