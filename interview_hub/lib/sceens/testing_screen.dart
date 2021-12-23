import 'package:flutter/material.dart';
import 'package:interview_hub/sceens/mobile/buisness_root_screen_mobile.dart';
import 'package:interview_hub/widgets/job_post_card.dart';

/// Purpose is to just put all testing widgets here

class TestingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: BuisnessRootScreenMobile(buisness: "Akira Ramen"),
    );
  }
  
}