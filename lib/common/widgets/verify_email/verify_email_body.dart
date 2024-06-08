// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class VerifyEmailBody extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool? isEmail;
  const VerifyEmailBody({
  super.key,
    required this.title,
    required this.subTitle,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: AppSize.spaceBtwItems,
        ),
        isEmail!
            ? Text(
                'MahmoudAshry@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              )
            : const SizedBox(),
        const SizedBox(
          height: AppSize.spaceBtwItems,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.labelLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: AppSize.spaceBtwItems,
        ),
      ],
    );
  }
}
