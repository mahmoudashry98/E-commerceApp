// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final Widget prefixIcon;
  final String labelText;
  final TextStyle labelStyle;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const TextFormFieldWidget({
    super.key,
    required this.prefixIcon,
    required this.labelText,
    required this.labelStyle,
    this.suffixIcon,
    this.keyboardType,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator:validator,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: labelText,
        labelStyle: labelStyle,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
