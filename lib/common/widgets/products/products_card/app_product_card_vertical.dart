import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';
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
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(AppSize.productImageRadius),
          color: isDarkMode ? AppColors.darkerGrey : AppColors.white,
        ), // BoxDecoration
        child: Column(
          children: [
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(AppSize.sm),
              backgroundColor:
                  isDarkMode ? AppColors.darkColor : AppColors.lightColor,
              child: Stack(
                children: [
                  const AppRoundedImage(
                      imageUrl: ImageStrings.productImage1,
                      applyImageRadius: true),
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
                        style: Theme.of(context).textTheme.labelLarge!.apply(
                              color: AppColors.black,
                            ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: AppCircularIcon(
                      icon: Iconsax.heart5,
                      color: AppColors.errorColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSize.spaceBtwItems / 2),
            Padding(
              padding: const EdgeInsets.only(left: AppSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppProductTitleText(
                      title: 'Green Nike Air Shoes', smallSize: true),
                  const SizedBox(height: AppSize.spaceBtwItems / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Nike',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: Theme.of(context).textTheme.labelMedium),
                      const SizedBox(width: AppSize.xs),
                      const Icon(Iconsax.verify5,
                          color: AppColors.primaryColor, size: AppSize.iconXs),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Price
                      const TProductPriceText(
                        price: '\$35.5',
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.darkColor,
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
                            child: Icon(Iconsax.add, color: AppColors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}