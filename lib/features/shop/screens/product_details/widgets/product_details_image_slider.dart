import 'package:ecommerce_app/common/widgets/images/app_rounded_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class AppProductImageSlider extends StatelessWidget {
  const AppProductImageSlider({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return AppCurvedEdgesWidget(
      child: Container(
        color: isDark ? AppColors.darkerGrey : AppColors.light,
        child: Stack(
          children: [
            /// Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(AppSize.productImageRadius * 2),
                child: Center(
                    child:
                        Image(image: AssetImage(ImageStrings.productImage5))),
              ),
            ),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: AppSize.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 6,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: AppSize.spaceBtwItems),
                  itemBuilder: (_, index) => AppRoundedImage(
                    width: 80,
                    backgroundColor: isDark ? AppColors.dark : AppColors.white,
                    border: Border.all(color: AppColors.primaryColor),
                    padding: const EdgeInsets.all(AppSize.sm),
                    imageUrl: ImageStrings.productImage3,
                  ),
                ),
              ),
            ),
            const AppBarWidget(
              showBackArrow: true,
              actions: [
                AppCircularIcon(
                  height: 50,
                  width: 50,
                  icon: Iconsax.heart5,
                  size: 25,
                  color: AppColors.errorColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
