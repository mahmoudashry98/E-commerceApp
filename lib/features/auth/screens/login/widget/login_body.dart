import 'package:ecommerce_app/common/widgets/text_form_field.dart';
import 'package:ecommerce_app/features/auth/screens/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/app_button.dart';
import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../forgot_password/forgo_password_screen.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSize.spaceBtwSections),
      child: Form(
        child: Column(
          children: [
            TextFormFieldWidget(
              prefixIcon: const Icon(Iconsax.direct_right),
              labelText: AppStrings.email,
              labelStyle: Theme.of(context).textTheme.bodyLarge!,
            ),
            const SizedBox(
              height: AppSize.spaceBetweenFields,
            ),
            TextFormFieldWidget(
              prefixIcon: const Icon(Iconsax.password_check),
              labelText: AppStrings.password,
              labelStyle: Theme.of(context).textTheme.bodyLarge!,
              suffixIcon: const Icon(Iconsax.eye_slash),
            ),
            const SizedBox(
              height: AppSize.spaceBetweenFields / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(AppStrings.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Get.to(const ForgotPasswordScreen());
                  },
                  child: Text(
                    AppStrings.forgetPassword,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.spaceBtwSections),
            AppButton(
              onPressed: () {
                Get.to(const NavMenuScreen());
              },
              text: AppStrings.signIn,
            ),
            const SizedBox(
              height: AppSize.spaceBtwItems,
            ),
            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    width: 1.0,
                    color: AppColors.buttonDisabledColor,
                  ),
                ),
                onPressed: () {
                  Get.to(const SignUpScreen());
                },
                child: Text(
                  AppStrings.createAccount,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
