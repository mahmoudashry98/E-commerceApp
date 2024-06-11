import 'package:flutter/material.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/contianers/primary_header_container.dart';
import '../../../../../common/widgets/list_titles/user_profile_title.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/sizes.dart';

class SettingHeader extends StatelessWidget {
  const SettingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPrimaryHeaderContainer(
      child: Column(
        children: [
          AppBarWidget(
            title: Text(
              'Account',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: AppColors.white),
            ),
          ),

          /// User Profile Card
          const AppUserProfileTitle(),
          const SizedBox(height: AppSize.spaceBtwSections),
        ],
      ),
    );
  }
}
