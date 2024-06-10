import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_funcation.dart';
import '../custom_shapes/contianers/rounded_container.dart';
import 'app_brand_card.dart';

class AppBrandShowCase extends StatelessWidget {
  const AppBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(AppSize.md),
      margin: const EdgeInsets.only(bottom: AppSize.spaceBtwItems),
      child: Column(
        children: [
          const AppBrandCard(showBorder: false),
          const SizedBox(height: AppSize.spaceBtwItems),
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: TRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(AppSize.md),
      margin: const EdgeInsets.only(right: AppSize.sm),
      backgroundColor: AppHelperFunctions.isDarkMode(context)
          ? AppColors.darkerGrey
          : AppColors.lightColor,
      child: Image(
        fit: BoxFit.contain,
        image: AssetImage(image),
      ),
    ),
  );
}
