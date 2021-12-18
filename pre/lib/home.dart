import 'package:flutter/material.dart';
import 'package:preschool_learning_app/pages/teacher_sign_in_page.dart';
import 'childrens.dart';
import 'teacher_panel.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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
        // color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment:CrossAxisAlignment.stretch,
          // alignment: Alignment.center,
          children: <Widget>[
            Image.asset('assets/home.jpg'),
            // Positioned(
            //   bottom: 240,
            //   left: 180,
            //   child:
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                MaterialButton(
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
                // ),
                // Positioned(
                //   bottom: 380,
                //   left: 220,
                //   child:
                MaterialButton(
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
                // )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
