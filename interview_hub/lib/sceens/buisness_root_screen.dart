import 'package:flutter/cupertino.dart';
import 'package:interview_hub/sceens/mobile/buisness_root_screen_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BuisnessRootScreen extends StatefulWidget {
  final String buisness;

  const BuisnessRootScreen({Key? key, required this.buisness}) : super(key: key);

  @override
  _BuisnessRootScreenState createState() => _BuisnessRootScreenState();
}

class _BuisnessRootScreenState extends State<BuisnessRootScreen> {

  //final TrackingScrollController _trackingScrollController = TrackingScrollController();

  // @override 
  // void dispose() {
  //   _trackingScrollController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(

      mobile: (BuildContext context) => BuisnessRootScreenMobile(
        buisness: widget.buisness, 
        
      ),

      tablet: (BuildContext context) => Container(),
      
      desktop: (BuildContext context) => Container(),
    );
  }
}