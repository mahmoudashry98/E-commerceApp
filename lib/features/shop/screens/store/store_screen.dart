import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/contianers/search_container.dart';
import 'package:ecommerce_app/common/widgets/layouts/gird_layout.dart';
import 'package:ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/brand/all_brand_screen.dart';
import 'package:ecommerce_app/features/shop/screens/store/widgets/category_tap.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/brands/app_brand_card.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_funcation.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBarWidget(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
            ],
          ),
          actions: [
            AppCartCounterIcon(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: AppHelperFunctions.isDarkMode(context)
                      ? AppColors.black
                      : AppColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(AppSize.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        // -- Search bar
                        const SizedBox(height: AppSize.spaceBtwItems),
                        const AppSearchContainer(
                            text: 'Search in Store',
                            showBorder: true,
                            showBackground: false),
                        const SizedBox(height: AppSize.spaceBtwSections),
                        SectionHeading(
                            title: 'Featured Brands',
                            onPressed: () => Get.to(const AllBrandsScreen())),
                        const SizedBox(height: AppSize.spaceBtwItems / 1.5),
                        AppGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const AppBrandCard(showBorder: true);
                          },
                        )
                      ],
                    ),
                  ),
                  bottom: const AppTabBar(
                    tabs: [
                      Tab(child: Text('Sports')),
                      Tab(child: Text('Furniture')),
                      Tab(child: Text('Electronics')),
                      Tab(child: Text('Clothes')),
                      Tab(child: Text('Cosmetics')),
                    ],
                  )),
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
