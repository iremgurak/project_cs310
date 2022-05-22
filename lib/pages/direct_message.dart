import 'package:flutter/material.dart';
import 'package:project_cs310/widgets/header.dart';

class DirectMessages extends StatefulWidget {
  const DirectMessages({Key? key}) : super(key: key);

  @override
  _DirectMessagesState createState() => _DirectMessagesState();
}

class _DirectMessagesState extends State<DirectMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context, titleText: "Direct Messages"),
      body: const Text("Messages"),
    );
  }
}

class DirectMessagesItem extends StatelessWidget {
  const DirectMessagesItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('DirectMessages Item');
  }
}
