// ignore_for_file: file_names

import 'package:delivery/constants.dart';
import 'package:flutter/material.dart';

class ButtonSolid extends StatelessWidget {
  const ButtonSolid({super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0),
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        backgroundColor: primaryColor,
        minimumSize: const Size(double.infinity, 61),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
