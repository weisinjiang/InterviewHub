import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'mobile/sign_in_mobile.dart';

/// Sign In Screen

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(

      mobile: (context) => SignInScreenMobile(),

      desktop: (context) => SignInScreenMobile(),

    );
  }
}

