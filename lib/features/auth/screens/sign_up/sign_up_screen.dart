import 'package:ecommerce_app/features/auth/screens/sign_up/widgets/sign_up_body.dart';
import 'package:ecommerce_app/features/auth/screens/sign_up/widgets/sign_up_footer.dart';
import 'package:flutter/material.dart';

import '../../../../common/style/spacing_styles.dart';
import 'widgets/sign_up_header.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight / 2,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SignUpHeader(),
              SignUpBody(),
              SignUpFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
