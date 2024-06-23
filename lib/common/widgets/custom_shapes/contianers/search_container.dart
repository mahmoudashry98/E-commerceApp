import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_funcation.dart';

class AppSearchContainer extends StatelessWidget {
  const AppSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBorder = true,
    this.showBackground = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: AppSize.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: AppDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(AppSize.md),
          decoration: BoxDecoration(
            color: showBackground
                ? isDarkMode
                    ? AppColors.dark
                    : AppColors.white
                : Colors.transparent,
            borderRadius: BorderRadius.circular(AppSize.cardRadiusLg),
            border: showBorder ? Border.all(color: AppColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: AppColors.darkerGrey),
              const SizedBox(width: AppSize.spaceBtwItems),
              Text(
                'Search in Store',
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
