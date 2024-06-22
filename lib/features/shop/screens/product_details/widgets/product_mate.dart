import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/enum.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/contianers/rounded_container.dart';
import '../../../../../common/widgets/images/app_circular_image.dart';
import '../../../../../common/widgets/texts/app_brand_tittle_text_with_verified_icon.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/helpers/helper_funcation.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            TRoundedContainer(
              radius: AppSize.sm,
              backgroundColor: AppColors.secondaryColor.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.sm, vertical: AppSize.xs),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: AppColors.black)),
            ),
            const SizedBox(width: AppSize.spaceBtwItems),

            /// Price
            Text('\$250',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: AppSize.spaceBtwItems),
            const TProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: AppSize.spaceBtwItems / 1.5),

        /// Title
        const AppProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: AppSize.spaceBtwItems / 1.5),

        /// Stock Status
        Row(
          children: [
            const AppProductTitleText(title: 'Status'),
            const SizedBox(width: AppSize.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: AppSize.spaceBtwItems / 1.5),

        /// Brand
        Row(
          children: [
            AppCircularImage(
              image: ImageStrings.cosmeticsIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? AppColors.white : AppColors.black,
            ),
            const AppBrandTitleWithVerifiedIcon(
                title: 'Nike', brandTextSize: TextSize.medium),
          ],
        ),
      ],
    );
  }
}
