
import 'package:flutter/material.dart';

class RootScreen extends StatelessWidget {

  final String buisnessOwner;

  const RootScreen({Key? key, required this.buisnessOwner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(buisnessOwner),
    );
  }
  
}