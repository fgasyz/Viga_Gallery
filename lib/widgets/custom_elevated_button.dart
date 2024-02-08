import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {required this.label,
      required this.width,
      required this.backgroundColor,
      required this.onCallback,
      Key? key})
      : super(key: key);
  final String label;
  final double width;
  final Color backgroundColor;
  final Function onCallback;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: width,
      child: ElevatedButton(
        onPressed: () {
          onCallback();
        },
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            backgroundColor: backgroundColor),
        child:
            Text(label, style: Theme.of(context).dialogTheme.contentTextStyle),
      ),
    );
  }
}
