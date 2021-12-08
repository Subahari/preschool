import 'package:flutter/material.dart';
import 'childrens.dart';
import 'teacher_panel.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.green,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset('home.jpg'),
            Positioned(
              bottom: 240,
              left: 180,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.teal[700],
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),

                // leading: IconButton(
                //   icon: Icon(Icons.menu),
                //   onPressed: () {},
                // ),

                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => Childrens()),
                  );
                },
                child: Text(
                  'மாணவர்கள்',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 380,
              left: 220,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.teal[700],
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInPage()));
                },
                child: Text(
                  'ஆசிரியர்',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.yellow[100],
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.yellow[100],
              height: 50,
            ),
            Image.asset('img2.jpg'),
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
    );
  }
}
