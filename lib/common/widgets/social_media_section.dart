// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_app/common/widgets/social_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_funcation.dart';

import '../../../../../utils/constants/app_colors.dart';

class SocialMediaSection extends StatelessWidget {
  final String testBtwDivider;
  final String googleIcon;
  final String facebookIcon;
  const SocialMediaSection({
    super.key,
    required this.testBtwDivider,
    required this.googleIcon,
    required this.facebookIcon,
  });

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
              testBtwDivider.capitalize!,
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
            SocialButtons(
              icon: googleIcon,
            ),
            const SizedBox(
              width: AppSize.spaceBtwItems,
            ),
            SocialButtons(
              icon: facebookIcon,
            ),
          ],
        )
      ],
    );
  }
}
