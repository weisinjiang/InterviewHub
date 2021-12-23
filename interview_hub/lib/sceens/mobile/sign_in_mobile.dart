import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_hub/shared/app_colors.dart';

class SignInScreenMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: screenSize.height,
            width: screenSize.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/signin.webp',
                    ),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: const EdgeInsets.all(10.0)),
                  Container(
                    height: 100,
                    width: 500,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/InterviewHub-logos_transparent.png"),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text(
                      "One Place for All Applications",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: primaryBlue),
                    ),
                  ),
                  Text(
                    "Made for Small Buisness Owners",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: primaryBlue),
                  ),
                    
                  const SizedBox(height: 200,),
                    
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: primaryBlue,
                        ),
                        onPressed: () => print("sign in with Google"),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/google_logo.png", fit: BoxFit.contain, height: 20,),
                            Text("Sign in with Google")
                          ],
                        )),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
