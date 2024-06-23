import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_funcation.dart';
import '../../images/app_rounded_image.dart';
import '../../texts/app_brand_tittle_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class AppCardItem extends StatelessWidget {
  const AppCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        AppRoundedImage(
          imageUrl: ImageStrings.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(AppSize.sm),
          backgroundColor: AppHelperFunctions.isDarkMode(context)
              ? AppColors.darkerGrey
              : AppColors.light,
        ),
        const SizedBox(height: AppSize.spaceBtwSections),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(
                child: AppProductTitleText(
                    title: 'Black Sports shoes', maxLines: 1),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Uk 08 ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ) // TRoundedImage
      ],
    );
  }
}
