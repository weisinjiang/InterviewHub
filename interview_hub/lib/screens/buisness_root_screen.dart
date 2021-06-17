import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BuisnessRootScreen extends StatelessWidget {
  final String buisness;

  const BuisnessRootScreen({Key? key, required this.buisness}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => Container(),
      tablet: (BuildContext context) => Container(),
      desktop: (BuildContext context) => Container(),
    );
  }
  
}