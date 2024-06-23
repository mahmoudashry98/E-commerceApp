import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
            title: 'Shopping Address', buttonTitle: 'Change', onPressed: () {}),
        Text('Coding With T', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(width: AppSize.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: AppColors.grey, size: 16),
            const SizedBox(width: AppSize.spaceBtwItems),
            Text('+92-317-8059525',
                style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(width: AppSize.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: AppColors.grey, size: 16),
            const SizedBox(width: AppSize.spaceBtwItems),
            Text(
              'South Liana, Maine 87695, USA',
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            ),
          ],
        ),
      ], // children
    ); // Column
  }
}
