import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_hub/shared/app_colors.dart';

class RootScreenMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      body: SafeArea(  
        child: CustomScrollView(  
          slivers: [
            SliverAppBar(
              backgroundColor: primaryTan,

              title: Text("Interview Hub", style: TextStyle(color: primaryBlue, fontSize: 28, fontWeight: FontWeight.bold)),
              centerTitle: true,
              elevation: 5.0,
              titleSpacing: -1.2,
              

            ),
          ],
        ),
      ),
    );
  }
  
}