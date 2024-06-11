import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/features/auth/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/images/app_circular_image.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        showBackArrow: true,
        title:
            Text("Profile", style: Theme.of(context).textTheme.headlineMedium!),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpacing),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const AppCircularImage(
                        image: ImageStrings.user, width: 80, height: 80),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSize.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: AppSize.spaceBtwItems),
              const SectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: AppSize.spaceBtwItems),
              TProfileMenu(
                title: 'Name',
                value: 'Coding with T',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Username',
                value: 'Coding with T',
                onPressed: () {},
              ),
              const SizedBox(height: AppSize.spaceBtwItems),
              const Divider(),
              const SizedBox(height: AppSize.spaceBtwItems),
              const SectionHeading(
                  title: 'Personal Information', showActionButton: false),
              const SizedBox(height: AppSize.spaceBtwItems),
              TProfileMenu(title: 'User ID', value: '45689', onPressed: () {}),
              TProfileMenu(
                  title: 'E-mail', value: 'coding_with_t', onPressed: () {}),
              TProfileMenu(
                  title: 'Phone Number',
                  value: '+92-317-8059528',
                  onPressed: () {}),
              TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              TProfileMenu(
                  title: 'Date of Birth',
                  value: '10 Oct, 1994',
                  onPressed: () {}),
              const Divider(),
              const SizedBox(height: AppSize.spaceBtwItems),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account ',
                    style: TextStyle(color: AppColors.errorColor),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
