import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class TRatingBarIndicator extends StatelessWidget {
  const TRatingBarIndicator({
    super.key, required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: AppColors.grey,
      itemBuilder: (_, __) => const Icon(Iconsax.star1, color: AppColors.primaryColor),
    ); // RatingBarIndicator
  }
}
