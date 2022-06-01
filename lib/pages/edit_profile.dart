import "package:flutter/material.dart";

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    //final streamagramUser = context.select<AppState, StreamagramUser?>((value) => value.streamagramUser);

    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Cancel',
          ),
        ),
        leadingWidth: 80,
        title: const Text(
          ' Edit profile',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Done'),
          ),
        ],
      ),
      body: ListView(
        children: [
          const Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                const SizedBox(
                  width: 100,
                  child: Text(
                    'Name',
                  ),
                ),
                Text(
                    'Deneme'
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                const SizedBox(
                  width: 100,
                  child: Text(
                    'Username',
                  ),
                ),
                Text(
                    'Post'
                ),
              ],
            ),
          ),
          const Divider(color: Colors.grey),
        ],
      ),
    );
  }
}


