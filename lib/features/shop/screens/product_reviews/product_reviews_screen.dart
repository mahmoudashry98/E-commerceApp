import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/products/rating/rating_indicator.dart';
import 'package:ecommerce_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import 'widgets/rating_progress_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
          title: Text('Reviews & Ratings'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Ratings and reviews are verified and are from people who use the same type of device that you use.",
              ),
              const SizedBox(height: AppSize.spaceBtwItems),
              const TOverAllProductRating(), // Row
              const TRatingBarIndicator(rating: 3.5),
              Text(
                "12,611",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: AppSize.spaceBtwSections,
              ),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ], // children
          ), // Column
        ), // Padding
      ), // SingleChildScrollView
    );
  }
}
