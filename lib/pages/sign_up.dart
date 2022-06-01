import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Register extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Sign Up For A Free Account',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: InputDecoration(

                        filled: true,
                        hintText: 'First Name',
                        border: OutlineInputBorder(

                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15, height: 15,),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: InputDecoration(

                        filled: true,
                        hintText: 'Last Name',
                        border: OutlineInputBorder(

                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 15, height: 15,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: InputDecoration(

                        filled: true,
                        hintText: 'Email Address',
                        border: OutlineInputBorder(

                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15, height: 15,),
                ],
              ),

              SizedBox(width: 15, height: 15,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: InputDecoration(

                        filled: true,
                        hintText: 'Create Password',
                        border: OutlineInputBorder(

                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 30, height: 30,),
              OutlinedButton(
                child: Text("Register", style: TextStyle(fontSize: 20.0),),

                onPressed: () {},
              ),
            ],
          ),
        ),
      ),

    );
  }
}
