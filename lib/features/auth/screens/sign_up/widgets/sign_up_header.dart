import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_strings.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.signupTitle,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(
          height: AppSize.spaceBtwItems,
        ),
      ],
    );
  }
}
