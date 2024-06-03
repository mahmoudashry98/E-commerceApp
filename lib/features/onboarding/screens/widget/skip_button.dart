import 'package:ecommerce_app/features/onboarding/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class OnBoardingShip extends StatelessWidget {
  const OnBoardingShip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceUtils.getAppBarHeight(),
      right: AppSize.defaultSpacing,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text(
          'Skip',
          style: TextStyle(
            fontSize: AppSize.fontSizeLg,
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
