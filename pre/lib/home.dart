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
        // width: MediaQuery.of(context).size.width,

        // color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // alignment: Alignment.center,
          children: <Widget>[
            Image.asset(
              "assets/10212.jpg",
            ),

            // Image.asset('assets/home.jpg'),
            // Positioned(
            //   bottom: 240,
            //   left: 180,
            //   child:
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue.shade100,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue.shade100,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(width: 2, color: Colors.red.shade200),
                      ),
                      hintText: 'User Names',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue.shade100,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue.shade100,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(width: 2, color: Colors.red.shade200),
                      ),
                      hintText: 'Index',
                    ),
                  ),
                ),
                // TextField(
                //   decoration: const InputDecoration(
                //       border: OutlineInputBorder(),
                //       hintText: 'Enter a name',
                //       contentPadding:
                //           const EdgeInsets.symmetric(horizontal: 40.0)),
                // ),

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
                    Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (context) => Childrens()),
                    );
                  },
                  child: Text(
                    'Children',
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
                Expanded(
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInPage()));
                    },
                    child: Text(
                      'Teacher',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )

                // )
              ],
            ),
            Expanded(child: Image.asset("assets/preschool-chool.jpg"))
          ],
        ),
      ),
    );
  }
}
