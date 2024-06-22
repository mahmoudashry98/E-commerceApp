import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/enum.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_funcation.dart';
import '../custom_shapes/contianers/rounded_container.dart';
import '../images/app_circular_image.dart';
import '../texts/app_brand_tittle_text_with_verified_icon.dart';

class AppBrandCard extends StatelessWidget {
  const AppBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(AppSize.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: AppCircularImage(
                isNetworkImage: false,
                image: ImageStrings.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: AppHelperFunctions.isDarkMode(context)
                    ? AppColors.white
                    : AppColors.black,
              ),
            ),
            const SizedBox(
              width: AppSize.spaceBtwItems / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSize.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
