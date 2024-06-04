import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_strings.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: Divider(
                color: dark ? AppColors.darkGrey : AppColors.grey,
                thickness: 0.5,
                indent: 60,
                endIndent: 5,
              ),
            ),
            Text(
              AppStrings.orSignInWith.capitalize!,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Flexible(
              child: Divider(
                color: dark ? AppColors.darkGrey : AppColors.grey,
                thickness: 0.5,
                indent: 5,
                endIndent: 60,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.spaceBtwItems,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSocialMediaIcons(ImageStrings.googleIcon),
            const SizedBox(
              width: AppSize.spaceBtwItems,
            ),
            _buildSocialMediaIcons(ImageStrings.facebookIcon),
          ],
        )
      ],
    );
  }

  Widget _buildSocialMediaIcons(String image) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          strokeAlign: 1,
          color: AppColors.grey,
        ),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Image(
          width: AppSize.iconMd,
          height: AppSize.iconMd,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
