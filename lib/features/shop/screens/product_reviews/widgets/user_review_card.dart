import 'package:ecommerce_app/common/widgets/custom_shapes/contianers/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../common/widgets/products/rating/rating_indicator.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/image_strings.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage:
                        AssetImage(ImageStrings.userProfileImage1)),
                const SizedBox(width: AppSize.spaceBtwItems),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ), // Row
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ), // Row
        const SizedBox(height: AppSize.spaceBtwItems),

        /// Review
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: AppSize.spaceBtwItems),
            Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ), // Row
        const SizedBox(height: AppSize.spaceBtwItems),
        const ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor),
        ),
        const SizedBox(height: AppSize.spaceBtwItems),
        TRoundedContainer(
          backgroundColor: dark ? AppColors.darkerGrey : AppColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(AppSize.md),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Apple Store",
                          style: Theme.of(context).textTheme.titleMedium),
                      Text("02 Nov, 2023",
                          style: Theme.of(context).textTheme.titleMedium),
                    ]),
                const SizedBox(height: AppSize.spaceBtwItems),
                const ReadMoreText(
                  'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: AppSize.spaceBtwItems,
        )
      ],
    );
  }
}
