import 'package:flutter/material.dart';
import 'package:preschool_learning_app/teacher_panel.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.yellow[100],
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.yellow[100],
                height: 50,
              ),
              Image.asset('assets/img2.jpg'),
              SizedBox(
                height: 20,
              ),
              Text('Teacher Login',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                  )),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.person,
                      color: Colors.grey[400],
                    ),
                    hintText: 'User name',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey[400],
                    ),
                    hintText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.redAccent,
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
                minWidth: MediaQuery.of(context).size.width - 60,
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => Teacher()),
                  );
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
