import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_funcation.dart';
import '../../icons/circular_icon.dart';

class AppProductQuantityWithAddRemoveButton extends StatelessWidget {
  const AppProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: AppSize.md,
          color: AppHelperFunctions.isDarkMode(context)
              ? AppColors.white
              : AppColors.black,
          backgroundColor: AppHelperFunctions.isDarkMode(context)
              ? AppColors.darkerGrey
              : AppColors.light,
        ),
        const SizedBox(width: AppSize.spaceBtwItems),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(width: AppSize.spaceBtwItems),
        const AppCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: AppSize.md,
          color: AppColors.white,
          backgroundColor: AppColors.primaryColor,
        ),
      ],
    );
  }
}
