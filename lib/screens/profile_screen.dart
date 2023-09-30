import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lottie/lottie.dart';

import 'home_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Column(
        children: [
          Container(
            // margin: EdgeInsets.only(left: 20, right: 20),
            margin: EdgeInsets.only(top: 15),
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8.0)]),
            child: Icon(
              LineIcons.user,
              size: 60,
              color: Colors.blueGrey,
            ),
          ),
          SizedBox(height: 10),
          Text("User Name",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.w300)),
          SizedBox(height: 10),
          Text("User@gmail.com",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.w300)),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(right: 25,left: 25,bottom: 10,top: 10),
            height: 380,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                ListTile(
                  leading:
                      Icon(Icons.person_outline, color: (Color(0xFF4C53A5))),
                  title: Text('Edit Profile'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.location_on_outlined,
                      color: (Color(0xFF4C53A5))),
                  title: Text('Saved Address'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.square_list,
                      color: (Color(0xFF4C53A5))),
                  title: Text('Orders'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.conversation_bubble,
                      color: (Color(0xFF4C53A5))),
                  title: Text('Contact Us'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.question_circle,
                      color: (Color(0xFF4C53A5))),
                  title: Text('Help and Feedback'),
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const HelpAndFeedback()));
                  },
                ),
                ListTile(
                  leading:
                      Icon(Icons.logout_outlined, color: (Color(0xFF4C53A5))),
                  title: Text('Logout'),
                  onTap: () {
                    // Navigator.of(context).pushAndRemoveUntil(
                    //     MaterialPageRoute(builder: (context) => LoginScreen()),
                    //     (Route<dynamic> route) => false);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
