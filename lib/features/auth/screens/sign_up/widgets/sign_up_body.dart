import 'package:ecommerce_app/common/widgets/text_form_field.dart';
import 'package:ecommerce_app/common/widgets/verify_email/verify_email.dart';
import 'package:ecommerce_app/features/auth/controller/auth_controller.dart';
import 'package:ecommerce_app/utils/helpers/helper_funcation.dart';
import 'package:ecommerce_app/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/app_button.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthController>();
    final dark = AppHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSize.spaceBtwSections / 2),
      child: Form(
        key: controller.signupFormKey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormFieldWidget(
                    controller: controller.firstName,
                    validator: (value) => TValidator.vaildateEmptyText('First Name', value),
                    prefixIcon: const Icon(Iconsax.user),
                    labelText: AppStrings.firstName,
                    labelStyle: Theme.of(context).textTheme.bodyLarge!,
                  ),
                ),
                const SizedBox(
                  width: AppSize.spaceBetweenFields,
                ),
                Expanded(
                  child: TextFormFieldWidget(
                    validator: (value) => TValidator.vaildateEmptyText('Last Name', value),
                    controller: controller.lastName,
                    prefixIcon: const Icon(Iconsax.user),
                    labelText: AppStrings.lastName,
                    labelStyle: Theme.of(context).textTheme.bodyLarge!,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.spaceBetweenFields,
            ),
            TextFormFieldWidget(
              controller: controller.userName,
              validator: (value) => TValidator.vaildateEmptyText('User Name', value),
              prefixIcon: const Icon(Iconsax.user_edit),
              labelText: AppStrings.username,
              labelStyle: Theme.of(context).textTheme.bodyLarge!,
            ),
            const SizedBox(
              height: AppSize.spaceBetweenFields,
            ),
            TextFormFieldWidget(
              validator: (value) => TValidator.validateEmail(value),
              controller: controller.email,
              prefixIcon: const Icon(Iconsax.direct),
              labelText: AppStrings.email,
              labelStyle: Theme.of(context).textTheme.bodyLarge!,
            ),
            const SizedBox(
              height: AppSize.spaceBetweenFields,
            ),
            TextFormFieldWidget(
              controller: controller.phoneNumber,
              validator: (value) => TValidator.validatePhoneNumber(value),
              prefixIcon: const Icon(Iconsax.call),
              labelText: AppStrings.phoneNo,
              labelStyle: Theme.of(context).textTheme.bodyLarge!,
            ),
            const SizedBox(
              height: AppSize.spaceBetweenFields,
            ),
            TextFormFieldWidget(
              controller: controller.password,
              validator: (value) => TValidator.validatePassword(value),
              prefixIcon: const Icon(Iconsax.password_check),
              labelText: AppStrings.password,
              labelStyle: Theme.of(context).textTheme.bodyLarge!,
              suffixIcon: const Icon(Iconsax.eye_slash),
            ),
            const SizedBox(
              height: AppSize.spaceBetweenFields,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value) {})),
                const SizedBox(width: AppSize.spaceBtwItems / 2),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${AppStrings.iAgreeTo} ',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: AppStrings.privacyPolicy,
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                                color: dark ? AppColors.white : AppColors.primaryColor,
                                decoration: TextDecoration.underline,
                                decorationColor: dark ? AppColors.white : AppColors.primaryColor,
                              ),
                        ),
                        TextSpan(
                          text: ' ${AppStrings.and} ',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: AppStrings.termsOfUse,
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                                color: dark ? AppColors.white : AppColors.primaryColor,
                                decoration: TextDecoration.underline,
                                decorationColor: dark ? AppColors.white : AppColors.primaryColor,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.spaceBtwSections),
            AppButton(
              onPressed: () => controller.signup(),
              text: AppStrings.createAccount,
            ),
            const SizedBox(
              height: AppSize.spaceBtwItems,
            ),
          ],
        ),
      ),
    );
  }
}
