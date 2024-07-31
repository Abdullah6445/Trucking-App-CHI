import 'package:flutter/material.dart';

class CustomLargeElevatedButton extends StatelessWidget {
  CustomLargeElevatedButton(
      {super.key, required this.buttonText, required this.onTap});

  String buttonText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          // backgroundColor: Color(0xff6B4EFF),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          minimumSize:
              Size(double.infinity, MediaQuery.sizeOf(context).height * .06),
        ),
        onPressed: onTap,
        child: Text(buttonText));
  }
}
