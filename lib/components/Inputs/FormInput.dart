import 'package:delivery/constants.dart';
import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  const FormInput({
    super.key,
    required this.placeholder,
    this.suffixIcon,
    this.obscureText = false,
  });
  final String placeholder;
  final Widget? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        fontSize: 16.0,
        fontFamily: "Inter",
      ),
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        hintText: placeholder,
        fillColor: tertinaryColor,
        border: InputBorder.none,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: tertinaryColor),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 22, horizontal: 16),
        suffixIcon: suffixIcon,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
      ),
    );
  }
}
