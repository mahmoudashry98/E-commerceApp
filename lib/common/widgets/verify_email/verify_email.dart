import 'package:ecommerce_app/common/widgets/verify_email/success_create_account.dart';
import 'package:ecommerce_app/common/widgets/verify_email/verify_email_footer.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/app_strings.dart';
import '../../../utils/constants/image_strings.dart';
import 'verify_email_body.dart';
import 'verify_email_header.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpacing),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const VerifyEmailHeader(
                image: ImageStrings.sendEmail,
              ),
              const VerifyEmailBody(
                title: AppStrings.confirmEmail,
                subTitle: AppStrings.confirmEmailSubTitle,
                isEmail: true,
              ),
              VerifyEmailFooter(
                textButton: AppStrings.resendEmail,
                appButtonText: AppStrings.tContinue,
                isResend: true,
                onPressed: () {
                  Get.to(const SuccessCreatedAccount());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
