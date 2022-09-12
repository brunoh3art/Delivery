// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ButtonOutline extends StatelessWidget {
  const ButtonOutline({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(0),
        textStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w600, color: Colors.orange),
        minimumSize: const Size(double.infinity, 61),
        side: const BorderSide(color: Colors.orange),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
      ),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w600, color: Colors.orange),
      ),
    );
  }
}
