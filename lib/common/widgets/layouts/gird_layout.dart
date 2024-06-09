import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class AppGridView extends StatelessWidget {
  const AppGridView({
    super.key,
    required this.itemCount,
    required this.mainAxisExtent,
    required this.itemBuilder,
  });
  final int itemCount;
  final double mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: AppSize.gridViewSpacing,
        crossAxisSpacing: AppSize.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
