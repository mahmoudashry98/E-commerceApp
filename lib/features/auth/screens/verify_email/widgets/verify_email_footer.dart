// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ecommerce_app/features/auth/screens/verify_email/success_create_account.dart';

import '../../../../../common/widgets/app_button.dart';
import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class VerifyEmailFooter extends StatelessWidget {
  final String textButton;
  final bool isResend;
  const VerifyEmailFooter({
    super.key,
    required this.textButton,
    this.isResend = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(
          text: AppStrings.continueText,
          onPressed: () => Get.to(const SuccessCreatedAccount()),
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
                    textButton,
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
