// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final Widget prefixIcon;
  final String labelText;
  final TextStyle labelStyle;
  final Widget? suffixIcon;

  const TextFormFieldWidget({
    super.key,
    required this.prefixIcon,
    required this.labelText,
    required this.labelStyle,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: labelText,
        labelStyle: labelStyle,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
