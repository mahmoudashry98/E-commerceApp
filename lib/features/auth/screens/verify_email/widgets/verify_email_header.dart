// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_funcation.dart';

class VerifyEmailHeader extends StatelessWidget {
  final String image;
  const VerifyEmailHeader({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          width: AppHelperFunctions.screenWidth() * 0.6,
          image:  AssetImage(
            image,
          ),
        ),
        const SizedBox(
          height: AppSize.spaceBtwItems,
        ),
      ],
    );
  }
}
