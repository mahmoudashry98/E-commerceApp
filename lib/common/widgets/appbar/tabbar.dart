import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/helpers/helper_funcation.dart';

class AppTabBar extends StatelessWidget implements PreferredSizeWidget {
  // If you want to add the background color to tabs you have to wrap them in Material widget.
  // To do that we need [PreferredSized] Widget and that's why created custom class. [PreferredSizeWidget]
  const AppTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? AppColors.black : AppColors.white,
      child: TabBar(
        padding: EdgeInsets.zero,
        tabAlignment: TabAlignment.start,
        tabs: tabs,
        isScrollable: true,
        indicatorColor: AppColors.primaryColor,
        labelColor: dark ? AppColors.white : AppColors.primaryColor,
        unselectedLabelColor: AppColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppDeviceUtils.getAppBarHeight());
}
