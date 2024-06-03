import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSize.spaceBtwSections),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Iconsax.direct_right),
              labelText: AppStrings.email,
              labelStyle: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const SizedBox(
            height: AppSize.spaceBetweenFields,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Iconsax.password_check),
              labelText: AppStrings.password,
              labelStyle: Theme.of(context).textTheme.bodyLarge,
              suffixIcon: const Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: AppSize.spaceBetweenFields / 2,
          ),
          // Remember Me & Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Remember Me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(AppStrings.rememberMe),
                ],
              ),

              // Forget Password
              TextButton(
                onPressed: () {},
                child: Text(
                  AppStrings.forgetPassword,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.spaceBtwSections),

          // Sign In Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(AppStrings.signIn),
            ),
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
              onPressed: () {},
              child: Text(
                AppStrings.createAccount,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
