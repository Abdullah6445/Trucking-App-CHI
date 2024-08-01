import 'package:flutter/material.dart';

class CustomSmallElevatedButton extends StatelessWidget {
  CustomSmallElevatedButton({super.key, required this.buttonText, this.onTap});

  String buttonText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
      onPressed: onTap,
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 10, color: Colors.black),
      ),
    );
  }
}
