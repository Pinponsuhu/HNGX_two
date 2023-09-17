import 'package:cv/edit.dart';
import 'package:cv/values.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatefulWidget {
  static String id = "/";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

    Map<String, dynamic> userValue = {
    "name" : "Pinponsuhu Joseph", 
    "github" : "Pinponsuhu",
    "slack" : "Pinponsuhu",
    "bio" : "As an introverted backend and mobile app developer, I thrive in the digital realm, crafting innovative solutions behind the scenes. My code speaks louder than words, and I relish the solitude of programming. Offscreen, I'm a passionate football/soccer enthusiast, finding solace in the beautiful game's strategic intricacies. When I'm not debugging or kicking a ball, I unwind with comedy, cherishing the laughter that connects people across the introvert-extrovert spectrum."
  };

  void _updateValue(Map<String, dynamic> newValue) {
    setState(() {
      userValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: false,
        backgroundColor: Colors.grey[900],
        elevation: 0,
        actions: [
          IconButton(
            onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditScreen(updateValue: _updateValue, currentValue: userValue))),
            icon: Icon(
              LineIcons.feather, 
              color: Colors.grey[50],
              )
            )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello 👋🏾",
              style: TextStyle(
                color: Colors.grey[50],
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "${userValue['name']}",
              style: TextStyle(
                  color: Colors.grey[50],
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Icon(
                  LineIcons.alternateGithub,
                  color: Colors.grey[50],
                  size: 32,
                ),
                SizedBox(
                  width: 8,
                ),
                Text("${userValue['github']}",
                    style: TextStyle(
                      color: Colors.grey[50],
                      fontSize: 18,
                    ))
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Icon(
                  LineIcons.slackLogo,
                  color: Colors.grey[50],
                  size: 32,
                ),
                SizedBox(
                  width: 8,
                ),
                Text("${userValue['slack']}",
                    style: TextStyle(
                      color: Colors.grey[50],
                      fontSize: 18,
                    ))
              ],
            ), 
            SizedBox(
              height: 12,
            ),
            Text(
              "Bio", 
               style: TextStyle(
                  color: Colors.grey[50],
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              ),
              SizedBox(
              height: 6,
            ),
            Text(
              "${userValue['bio']}", 
              style: TextStyle(
                color: Colors.grey[50], 
                height: 1.4, 
                fontSize: 18
              ),
              )
          ],
        ),
      ),
    );
  }
}
