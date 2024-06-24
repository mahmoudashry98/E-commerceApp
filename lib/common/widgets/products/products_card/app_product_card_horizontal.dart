import 'package:ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_app/common/widgets/images/app_rounded_image.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../custom_shapes/contianers/rounded_container.dart';
import '../../texts/app_brand_tittle_text_with_verified_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class AppProductCardHorizontal extends StatelessWidget {
  const AppProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.productImageRadius),
        color: dark ? AppColors.darkerGrey : AppColors.softGrey,
      ), // BoxDecoration
      child: Row(
        children: [
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(AppSize.sm),
            backgroundColor: dark ? AppColors.dark : AppColors.light,
            child: Stack(
              children: [
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: AppRoundedImage(
                    imageUrl: ImageStrings.productImage1,
                    applyImageRadius: true,
                  ),
                ),
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: AppSize.sm,
                    backgroundColor: AppColors.secondaryColor.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.sm, vertical: AppSize.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: AppColors.black),
                    ),
                  ),
                ),
                const Positioned(
                  top: 0,
                  right: 0,
                  child: AppCircularIcon(
                    height: 40,
                    width: 40,
                    icon: Iconsax.heart5,
                    size: 25,
                    color: AppColors.errorColor,
                  ),
                ),
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: AppSize.sm, left: AppSize.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppProductTitleText(
                          title: 'Green Nike Half Sleeves Shirt',
                          smallSize: true),
                      SizedBox(height: AppSize.spaceBtwItems / 2),
                      AppBrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                  const Spacer(),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Pricing
                      const Flexible(child: TProductPriceText(price: '256.0')),

                      /// Add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSize.cardRadiusMd),
                            bottomRight:
                                Radius.circular(AppSize.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: AppSize.iconLg * 1.2,
                          height: AppSize.iconLg * 1.2,
                          child: Center(
                              child: Icon(Iconsax.add, color: AppColors.white)),
                        ),
                      ), // Container
                    ],
                  ), // Row
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
