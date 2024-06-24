import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_funcation.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    // required this.image,
    required this.title,
    this.textColor = AppColors.white,
    this.backgroundColor,
    required this.onTap,
  });

  final String title;
  final Color? textColor;
  final Color? backgroundColor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSize.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(AppSize.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (isDarkMode ? AppColors.black : AppColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Center(
                child: Image(
                  image: AssetImage(ImageStrings.productImage1),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: AppSize.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelSmall!.apply(
                      color: textColor,
                    ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
