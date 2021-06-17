import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:interview_hub/screens/root_screen.dart';
import 'package:interview_hub/screens/testing_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InterviewHub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TestingScreen(),
      onGenerateRoute: (routeSetting) {
        return new MaterialPageRoute(
          builder: (context) => RootScreen(buisnessOwner: routeSetting.name!),
          settings: routeSetting
        );
      },
    );
  }
}


