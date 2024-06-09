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
    this.backgroundColor = AppColors.white,
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
              child: Center(
                child: Image(
                  image: const AssetImage(
                      "assets/icons/categories/icons8-shoes-64.png"),
                  fit: BoxFit.cover,
                  color:
                      isDarkMode ? AppColors.lightColor : AppColors.darkColor,
                ),
              ),
            ),
            const SizedBox(height: AppSize.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall!.apply(
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
