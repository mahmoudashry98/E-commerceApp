import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/carts.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBarWidget(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppStrings.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: AppColors.grey),
          ),
          Text(
            AppStrings.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: AppColors.white),
          ),
        ],
      ),
      actions: [
        AppCartCounterIcon(iconColor: AppColors.white, onPressed: () {}),
      ],
    );
  }
}
