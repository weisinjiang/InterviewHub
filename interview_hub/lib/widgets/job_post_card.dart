import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:interview_hub/shared/text_style.dart';

// Job Posting Card for a position

class JobPostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      child: Card(
        elevation: 5.0,
        margin: const EdgeInsets.all(10.0),
        child: Column(
          children: [
          
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/placeholder/akira.png"),),
              title: Text("Akira Ramen D.C.", style: boldText(),),
              subtitle: Text("2479 18th St NW, Washington, DC 20009"),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("We are hiring servers"),
            ),

            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("6 days ago", style: lightBlack(),)
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
  
}