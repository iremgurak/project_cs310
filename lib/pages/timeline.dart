
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_cs310/widgets/header.dart';
import 'package:project_cs310/widgets/progress.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import '../models/champion.dart';
import '../models/user.dart';
import 'detail_view.dart';


final GoogleSignIn googleSignIn = GoogleSignIn();

final usersRef = FirebaseFirestore.instance.collection('users');

class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {



  @override
  void initState() {
    // getUsers();
    getUserById();
    super.initState();
  }

  // getUsers() {
  //   usersRef.getDocuments().then((QuerySnapshot snapshot) {
  //     snapshot.documents.forEach((DocumentSnapshot doc) {
  //       print(doc.data);
  //       print(doc.documentID);
  //       print(doc.exists);
  //     });
  //   });
  // }
  getUserById() async {
    await Firebase.initializeApp();
    final String id = "89HwzD3YvdHAgnBT9bEZ";
    final DocumentSnapshot doc = await usersRef.doc(id).get();
    final data = doc.data as Map<String, dynamic>;
    final user = User.fromJson(data);
    print(user.fullName());
    print(doc.exists);
  }

  @override
  Widget build(context) {
    final List<String> titles = [
      "AKALI",
      "CAMILE",
      "EZREAL",
      "IRELIA",
      "POPPY",
      "ZOE",
    ];

    final List<Widget> images = [
      Hero(
        tag: "AKALI",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            "assets/images/akali_lol.gif",
            fit: BoxFit.cover,
          ),
        ),
      ),
      Hero(
        tag: "CAMILE",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            "assets/images/camile_lol.gif",
            fit: BoxFit.cover,
          ),
        ),
      ),
      Hero(
        tag: "EZREAL",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            "assets/images/ezreal_lol.gif",
            fit: BoxFit.cover,
          ),
        ),
      ),
      Hero(
        tag: "IRELIA",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            "assets/images/irelia_lol.gif",
            fit: BoxFit.cover,
          ),
        ),
      ),
      Hero(
        tag: "POPPY",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            "assets/images/poppy_lol.gif",
            fit: BoxFit.cover,
          ),
        ),
      ),
      Hero(
        tag: "ZOE",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            "assets/images/zoe_lol.gif",
            fit: BoxFit.cover,
          ),
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: Color(0XFF7CC0FF),
      appBar: header(context, titleText: "WasHere", isAppTitle: true),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
              ),
            ),
            Expanded(
              child: Container(
                child: VerticalCardPager(
                  // textStyle: TextStyle(color : Colors.red),
                  titles: titles,
                  images: images,
                  onPageChanged: (page) {
                    // print(page);
                  },
                  onSelectedItem: (index) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailView(
                            champion:
                            championsMap[titles[index].toLowerCase()]!,
                          )),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
