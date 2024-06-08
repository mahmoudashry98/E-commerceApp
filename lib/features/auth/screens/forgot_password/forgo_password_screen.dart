import 'package:ecommerce_app/common/widgets/text_form_field.dart';
import 'package:ecommerce_app/features/auth/screens/forgot_password/password_reset_email_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/style/spacing_styles.dart';
import '../../../../common/widgets/app_button.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: AppSize.md,
              ),
              Text(
                AppStrings.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: AppSize.spaceBtwSections,
              ),
              TextFormFieldWidget(
                prefixIcon: const Icon(Iconsax.direct),
                labelText: AppStrings.email,
                labelStyle: Theme.of(context).textTheme.bodyLarge!,
              ),
              const SizedBox(
                height: AppSize.spaceBtwSections,
              ),
              AppButton(
                text: AppStrings.submit,
                onPressed: () {
                  Get.to(const PasswordResetEmailScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
