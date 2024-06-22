import 'package:ecommerce_app/common/widgets/images/app_circular_image.dart';
import 'package:ecommerce_app/features/personalization/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/image_strings.dart';

class AppUserProfileTitle extends StatelessWidget {
  const AppUserProfileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const AppCircularImage(
          image: ImageStrings.user, width: 50, height: 50, padding: 0),
      title: Text(
        'Coding with T',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: AppColors.white),
      ),
      subtitle: Text(
        'support@codingwithT.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: AppColors.white),
      ),
      trailing: IconButton(
        onPressed: () {
          Get.to(const ProfileScreen());
        },
        icon: const Icon(Iconsax.edit, color: AppColors.white),
      ),
    );
  }
}
