import 'package:ecommerce_app/features/personalization/screens/address/user_address_screen.dart';
import 'package:ecommerce_app/features/shop/screens/order/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/app_button.dart';
import '../../../../../common/widgets/list_titles/settings_menu_title.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class AppSettingBody extends StatelessWidget {
  const AppSettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.defaultSpace),
      child: Column(
        children: [
          const SectionHeading(
              title: 'Account Settings', showActionButton: false),
          const SizedBox(height: AppSize.spaceBtwItems),
          AppSettingsMenuTitle(
            icon: Iconsax.safe_home,
            title: 'My Addresses',
            subTitle: 'Set shopping delivery address',
            onTap: () => Get.to(() => const UserAddressScreen()),
          ),
          const AppSettingsMenuTitle(
            icon: Iconsax.shopping_cart,
            title: 'My Cart',
            subTitle: 'Add, remove products and move to checkout',
          ),
          AppSettingsMenuTitle(
            icon: Iconsax.bag_tick,
            title: 'My Orders',
            subTitle: 'In-progress and Completed Orders',
            onTap: () => Get.to(() => const OrderScreen()),
          ),
          const AppSettingsMenuTitle(
            icon: Iconsax.bank,
            title: 'Bank Account',
            subTitle: 'Withdraw balance to registered bank account',
          ),
          const AppSettingsMenuTitle(
            icon: Iconsax.discount_shape,
            title: 'My Coupons',
            subTitle: 'List of all the discounted coupons',
          ),
          const AppSettingsMenuTitle(
            icon: Iconsax.notification,
            title: 'Notifications',
            subTitle: 'Set any kind of notification message',
          ),
          const AppSettingsMenuTitle(
            icon: Iconsax.security_card,
            title: 'Account Privacy',
            subTitle: 'Manage data usage and connected accounts',
          ),

          /// -- App Settings
          const SizedBox(height: AppSize.spaceBtwSections),
          const SectionHeading(title: 'App Settings', showActionButton: false),
          const SizedBox(height: AppSize.spaceBtwItems),
          const AppSettingsMenuTitle(
            icon: Iconsax.document_upload,
            title: 'Load Data',
            subTitle: 'Upload Data to your Cloud Firebase',
          ),
          AppSettingsMenuTitle(
            icon: Iconsax.location,
            title: 'Geolocation',
            subTitle: 'Set recommendation based on location',
            trailing: Switch(value: true, onChanged: (value) {}),
          ), // AppSettingsMenuTitle
          AppSettingsMenuTitle(
            icon: Iconsax.security_user,
            title: 'Safe Mode',
            subTitle: 'Search result is safe for all ages',
            trailing: Switch(value: false, onChanged: (value) {}),
          ), // AppSettingsMenuTitle
          AppSettingsMenuTitle(
            icon: Iconsax.image,
            title: 'HD Image Quality',
            subTitle: 'Set image quality to be seen',
            trailing: Switch(value: false, onChanged: (value) {}),
          ),
          const SizedBox(height: AppSize.spaceBtwSections),
          AppButton(
            text: 'Logout',
            onPressed: () {},
          ) // AppSettingsMenuTitle
        ],
      ),
    );
  }
}
