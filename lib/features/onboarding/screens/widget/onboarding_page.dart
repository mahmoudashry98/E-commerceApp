import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_funcation.dart';

class OnBoardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.defaultSpacing),
      child: Column(
        children: [
          Image(
            width: HelperFunctionsApp.screenWidth() * 0.8,
            height: HelperFunctionsApp.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,  
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSize.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
