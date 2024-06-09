import 'package:ecommerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/contianers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/contianers/search_container.dart';
import '../../../../common/widgets/layouts/gird_layout.dart';
import '../../../../common/widgets/products/products_card/app_product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const AppPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  AppSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(height: AppSize.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: AppSize.defaultSpacing),
                    child: Column(
                      children: [
                        SectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: AppColors.white,
                        ),
                        SizedBox(height: AppSize.spaceBtwItems),
                        HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSize.defaultSpacing),
              child: Column(
                children: [
                  const AppPromoSlider(
                    banners: [
                      ImageStrings.promoBanner1,
                      ImageStrings.promoBanner2,
                      ImageStrings.promoBanner3
                    ],
                  ),
                  const SizedBox(
                    height: AppSize.spaceBtwSections,
                  ),
                  AppGridView(
                    itemCount: 4,
                    itemBuilder: (_, index) => const AppProductCardVertical(),
                    mainAxisExtent: 288,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
