import 'package:ecommerce_app/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 180,
          image: AssetImage(
            dark ? ImageStrings.logoDark : ImageStrings.logoLight,
          ),
        ),
        Text(
          AppStrings.loginTitle,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(
          height: AppSize.sm,
        ),
        Text(
          AppStrings.loginSubTitle,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
