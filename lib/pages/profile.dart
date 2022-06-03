import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_cs310/widgets/header.dart';
import 'package:project_cs310/utils/user_preferences.dart';
import 'package:project_cs310/widget/appbar_widget.dart';
import 'package:project_cs310/widget/button_widget.dart';
import 'package:project_cs310/widget/numbers_widget.dart';
import 'package:project_cs310/widget/profile_widget.dart';

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
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          Center(child: buildUpgradeButton()),
          const SizedBox(height: 24),
          NumbersWidget(),
          const SizedBox(height: 48),
          buildAbout(user),
        ],
      ),
    );
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
  
    Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );
  
    Widget buildUpgradeButton() => ButtonWidget(
        text: 'Edit Profil',
        onClicked: () {},
      );
  
  Widget buildLocation(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.location,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
  

}
