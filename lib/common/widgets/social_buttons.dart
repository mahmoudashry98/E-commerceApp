// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  final String icon;
  const SocialButtons({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
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
          image: AssetImage(icon),
        ),
      ),
    );
  }
}
