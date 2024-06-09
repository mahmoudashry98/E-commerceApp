import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import 'circular_container.dart';
import '../curved_edges/curved_edges_widget.dart';

class AppPrimaryHeaderContainer extends StatelessWidget {
  const AppPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return AppCurvedEdgesWidget(
      child: Container(
        color: AppColors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: Stack(
                children: [
                  Positioned(
                    top: -150,
                    right: -250,
                    child: TCircularContainer(
                        backgroundColor:
                            AppColors.textWhiteColor.withOpacity(0.1)),
                  ),
                  Positioned(
                    top: 100,
                    right: -300,
                    child: TCircularContainer(
                        backgroundColor:
                            AppColors.textWhiteColor.withOpacity(0.1)),
                  ),
                  child,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
