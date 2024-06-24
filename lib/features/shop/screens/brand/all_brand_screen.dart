import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/products/sortable/sortable_product.dart';
import 'package:ecommerce_app/features/shop/screens/brand/brand_products.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../common/widgets/brands/app_brand_card.dart';
import '../../../../common/widgets/layouts/gird_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const SectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: AppSize.spaceBtwItems),

              /// Brands
              AppGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => AppBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(const BrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
