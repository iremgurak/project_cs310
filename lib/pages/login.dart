import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  const Login({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WasHere!',
        ),
        leading: BackButton(
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: ClipOval(
                  child : Image.network(
                    'https://static.vecteezy.com/system/resources/previews/000/413/443/non_2x/vector-location-icon.jpg',


                  )
              ),
              radius: 100,

            ),

          ),
          Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Text(
                'Username',
                style: TextStyle(fontSize: 20),
              )),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Please enter your username",
                labelText: "Username *"
            ),
          ),
          Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Text(
                'Password',
                style: TextStyle(fontSize: 20),
              )),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.lock),
                hintText: "Please enter your password",
                labelText: "Password *"
            ),
          ),
          Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(20),
              child: Text(
                'Forgot Password?',
                style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),

              )),
          OutlinedButton(
            child: Text("Login", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold
            ),
            ),

            onPressed: () {},
          ),
          SizedBox(height: 100,),

        ],
      ),
    );
  }
}