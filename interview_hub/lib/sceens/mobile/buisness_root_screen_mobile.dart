import 'package:flutter/material.dart';
import 'package:interview_hub/widgets/circle_button.dart';
import 'package:interview_hub/widgets/job_post_card.dart';
import 'package:provider/single_child_widget.dart';

class BuisnessRootScreenMobile extends StatelessWidget {
  final String buisness;

  const BuisnessRootScreenMobile({Key? key, required this.buisness})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: Text(
            "Akira Ramen",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              //letterSpacing: -1.2,
            ),
          ),
          centerTitle: false,
          floating: true,
          actions: [
            CircleButton(
                icon: Icons.email,
                iconSize: 30.0,
                onPressed: () => print('Email')),
            CircleButton(
                icon: Icons.person,
                iconSize: 30.0,
                onPressed: () => print('Your Applications'))
          ],
        ),
        const SliverPadding(padding: EdgeInsets.all(20.0)),
        SliverList(
          delegate: SliverChildListDelegate([JobPostCard(), JobPostCard()]),
        ),
      ],
    );
  }
}
