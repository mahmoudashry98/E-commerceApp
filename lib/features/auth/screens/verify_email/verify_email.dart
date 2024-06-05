import 'package:ecommerce_app/features/auth/screens/verify_email/widgets/verify_email_footer.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/image_strings.dart';
import 'widgets/verify_email_body.dart';
import 'widgets/verify_email_header.dart';

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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSize.defaultSpacing),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VerifyEmailHeader(
                image: ImageStrings.sendEmail,
              ),
              VerifyEmailBody(
                title: AppStrings.verifyEmail,
                subTitle: AppStrings.confirmEmail,
                isEmail: true,
              ),
              VerifyEmailFooter(
                textButton: AppStrings.resendEmail,
                isResend: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
