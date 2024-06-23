import 'package:ecommerce_app/common/widgets/layouts/gird_layout.dart';
import 'package:ecommerce_app/common/widgets/products/products_card/app_product_card_vertical.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/app_brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpace),
          child: Column(
            children: [
              const AppBrandShowCase(
                images: [
                  ImageStrings.productImage3,
                  ImageStrings.productImage2,
                  ImageStrings.productImage1
                ],
              ),
              SectionHeading(
                title: 'You might like',
                onPressed: () {},
              ),
              const SizedBox(height: AppSize.spaceBtwItems),
              AppGridLayout(
                  itemCount: 5,
                  mainAxisExtent: 288,
                  itemBuilder: (_, index) {
                    return const AppProductCardVertical();
                  }),
              const SizedBox(height: AppSize.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
