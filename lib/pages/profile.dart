import 'package:flutter/material.dart';
import 'package:project_cs310/widgets/header.dart';

import 'home.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  logout() {
    googleSignIn.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context, titleText: "Profile"),
      body: RaisedButton(
      child: Text('Logout'),
      onPressed: logout,
    ));
  }
}
