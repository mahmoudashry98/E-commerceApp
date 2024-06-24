import 'package:ecommerce_app/common/widgets/images/app_rounded_image.dart';
import 'package:ecommerce_app/common/widgets/texts/app_brand_tittle_text_with_verified_icon.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/product_details_screen.dart';
import 'package:ecommerce_app/utils/constants/enum.dart';
import 'package:ecommerce_app/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../style/shadow.dart';
import '../../custom_shapes/contianers/rounded_container.dart';
import '../../icons/circular_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class AppProductCardVertical extends StatelessWidget {
  const AppProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {
        Get.to(const ProductDetailsScreen());
      },
      child: Container(
        width: 180,
        // padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(AppSize.md),
          color: isDarkMode ? AppColors.darkerGrey : AppColors.white,
        ), // BoxDecoration
        child: Column(
          children: [
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(AppSize.sm),
              backgroundColor: isDarkMode ? AppColors.dark : AppColors.light,
              child: Stack(
                children: [
                  const AppRoundedImage(
                    imageUrl: ImageStrings.productImage1,
                    width: 150,
                    height: 158,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: AppSize.sm,
                      backgroundColor:
                          AppColors.secondaryColor.withOpacity(0.8),
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
            const SizedBox(height: AppSize.spaceBtwItems / 2),
            const Padding(
              padding: EdgeInsets.only(left: AppSize.sm),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppProductTitleText(
                        title: 'Green Nike Air Shoes', smallSize: true),
                    SizedBox(height: AppSize.spaceBtwItems / 2),
                    AppBrandTitleWithVerifiedIcon(
                      title: 'Nike',
                      brandTextSize: TextSize.large,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: AppSize.sm),
                  child: TProductPriceText(
                    price: '35.5',
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppSize.cardRadiusMd),
                      bottomRight: Radius.circular(AppSize.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: AppSize.iconLg * 1.2,
                    height: AppSize.iconLg * 1.2,
                    child: Center(
                      child: Icon(Iconsax.add, color: AppColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
