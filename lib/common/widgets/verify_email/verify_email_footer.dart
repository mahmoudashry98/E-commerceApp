// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../app_button.dart';

import '../../../utils/constants/sizes.dart';

class VerifyEmailFooter extends StatelessWidget {
  final String? textButton;
  final String appButtonText;
  final bool isResend;
  final void Function() onPressed;
  const VerifyEmailFooter({
    super.key,
    this.textButton,
    required this.appButtonText,
    this.isResend = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(
          text: appButtonText,
          onPressed: onPressed,
        ),
        const SizedBox(
          height: AppSize.spaceBtwItems,
        ),
        isResend
            ? SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    textButton ?? '',
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
