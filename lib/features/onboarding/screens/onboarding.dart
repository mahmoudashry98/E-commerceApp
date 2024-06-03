// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_app/features/onboarding/controller/onboarding_controller.dart';
import 'package:ecommerce_app/features/onboarding/screens/widget/dot_nav_smooth_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/text_string.dart';
import 'widget/next_button.dart';
import 'widget/onboarding_page.dart';
import 'widget/skip_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: (value) {
              
              controller.updatePageIndicator(value);
            },
            children: const [
              OnBoardingPage(
                image: ImageStrings.onBoarding1,
                title: AppString.onBoardingTitle1,
                subTitle: AppString.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: ImageStrings.onBoarding2,
                title: AppString.onBoardingTitle2,
                subTitle: AppString.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: ImageStrings.onBoarding3,
                title: AppString.onBoardingTitle3,
                subTitle: AppString.onBoardingSubTitle3,
              ),
            ],
          ),

          ///Get Started Button
          const OnBoardingShip(),
          const DotNavSmoothIndicator(),
          const NextButton(),
        ],
      ),
    );
  }
}
