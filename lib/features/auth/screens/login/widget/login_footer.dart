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
    return Row(
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
        )
      ],
    );
  }
}
