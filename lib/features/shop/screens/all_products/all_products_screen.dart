import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/layouts/gird_layout.dart';
import '../../../../common/widgets/products/products_card/app_product_card_vertical.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
          title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpace),
          child: Column(
            children: [
              /// Dropdown
              DropdownButtonFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.sort), hintText: 'Name'),
                onChanged: (value) {},
                items: [
                  'Name',
                  'Higher Price',
                  'Lower Price',
                  'Sale',
                  'Newest',
                  'Popularity'
                ]
                    .map((option) =>
                        DropdownMenuItem(value: option, child: Text(option)))
                    .toList(),
              ), // DropdownButtonFormField
              const SizedBox(height: AppSize.spaceBtwSections),

              /// Products
              AppGridLayout(
                  itemCount: 8,
                  itemBuilder: (_, index) => const AppProductCardVertical()),
            ],
          ),
        ),
      ),
    );
  }
}
