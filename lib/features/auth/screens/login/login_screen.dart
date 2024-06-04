import 'package:ecommerce_app/features/auth/screens/login/widget/login_footer.dart';
import 'package:ecommerce_app/features/auth/screens/login/widget/login_header.dart';
import 'package:flutter/material.dart';
import '../../../../common/style/spacing_styles.dart';
import 'widget/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginHeader(),
              LoginBody(),
              LoginFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
