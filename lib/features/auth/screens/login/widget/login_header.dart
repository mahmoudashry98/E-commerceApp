import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 180,
          image: dark
              ? const AssetImage('assets/logos/logo-white.png')
              : const AssetImage('assets/logos/logo-black.png'),
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
