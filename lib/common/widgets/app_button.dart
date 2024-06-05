// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final MaterialStateProperty<Color>? buttonColor;
  void Function() onPressed;
   AppButton({
    super.key,
    required this.text,
    this.textColor,
    this.buttonColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(backgroundColor: buttonColor),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
