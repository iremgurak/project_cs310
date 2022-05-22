import 'package:flutter/material.dart';
import 'package:project_cs310/widgets/header.dart';

class ActivityFeed extends StatefulWidget {
  const ActivityFeed({Key? key}) : super(key: key);

  @override
  _ActivityFeedState createState() => _ActivityFeedState();
}

class _ActivityFeedState extends State<ActivityFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context, titleText: "Notifications"),
      body: const Text("activity feed"),
    );
  }
}

class ActivityFeedItem extends StatelessWidget {
  const ActivityFeedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Activity Feed Item');
  }
}
