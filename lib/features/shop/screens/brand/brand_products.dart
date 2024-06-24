import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/brands/app_brand_card.dart';
import 'package:ecommerce_app/common/widgets/products/sortable/sortable_product.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(
        title: Text('Nike'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSize.defaultSpace),
          child: Column(
            children: [
              AppBrandCard(showBorder: true),
              SizedBox(height: AppSize.spaceBtwSections),
              AppSortableProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
