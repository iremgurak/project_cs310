
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_cs310/widgets/header.dart';
import 'package:project_cs310/widgets/progress.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';


final GoogleSignIn googleSignIn = GoogleSignIn();

final usersRef = FirebaseFirestore.instance.collection('users');

class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {

  logout() {
    googleSignIn.signOut();
  }

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
    print(doc.data);
    print(doc.exists);
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: header(context, isAppTitle: true),
      body: RaisedButton(
        child: Text('Logout'),
        onPressed: logout,
    ));
  }
}
