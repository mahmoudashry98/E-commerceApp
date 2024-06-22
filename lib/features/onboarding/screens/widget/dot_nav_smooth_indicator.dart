import 'package:ecommerce_app/features/onboarding/controller/onboarding_controller.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:ecommerce_app/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/sizes.dart';

class DotNavSmoothIndicator extends StatelessWidget {
  const DotNavSmoothIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = AppHelperFunctions.isDarkMode(context);
    return Positioned(
      left: AppSize.defaultSpacing,
      bottom: AppDeviceUtils.getBottomNavBarHeight() + 25,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? AppColors.dark : AppColors.light,
            dotHeight: 6),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
      ),
    );
  }
}
