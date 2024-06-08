import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/app_strings.dart';
import '../../../utils/constants/image_strings.dart';
import 'verify_email_body.dart';
import 'verify_email_header.dart';

class SuccessCreatedAccount extends StatelessWidget {
  const SuccessCreatedAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(null),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15),
            child: Icon(
              Iconsax.close_circle,
              color: AppColors.white,
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSize.defaultSpacing),
          child: Column(
            children: [
              VerifyEmailHeader(
                image: ImageStrings.createdEmail,
              ),
              VerifyEmailBody(
                title: AppStrings.yourAccountCreatedTitle,
                subTitle: AppStrings.yourAccountCreatedSubTitle,
              ),
              // VerifyEmailFooter(
              //   textButton: AppStrings.resendEmail,
              //   onPressed: ,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
