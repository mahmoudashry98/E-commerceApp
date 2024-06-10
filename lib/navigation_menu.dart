import 'package:ecommerce_app/features/shop/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/shop/screens/store/store_screen.dart';
import 'features/shop/screens/wish_list/wish_list_screen.dart';
import 'utils/constants/app_colors.dart';
import 'utils/helpers/helper_funcation.dart';

class NavMenuScreen extends StatelessWidget {
  const NavMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavMenuController());
    final isDarkMode = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            backgroundColor: isDarkMode ? AppColors.black : AppColors.white,
            indicatorColor: isDarkMode
                ? AppColors.white.withOpacity(0.1)
                : AppColors.black.withOpacity(0.1),
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(
                icon: Icon(Iconsax.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.shop),
                label: 'Store',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.heart),
                label: 'Wishlist',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.user),
                label: 'Profile',
              ),
            ]),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavMenuController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishListScreen(),
    Container(
      color: AppColors.errorColor,
    ),
    Container(
      color: AppColors.secondaryColor,
    ),
  ];
}
