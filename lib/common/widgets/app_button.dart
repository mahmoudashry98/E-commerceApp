// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? buttonColor;
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
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.primaryColor)),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
