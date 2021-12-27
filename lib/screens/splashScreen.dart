import 'dart:async';
import 'package:flutter/material.dart';
import 'package:preschool_learning_app/constants/appcolors.dart';

import 'welcome_screen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            new MaterialPageRoute(builder: (context) => WelcomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: Stack(
              children: [
                Align(
                  child: SizedBox(
                      height: 60,
                      child: Image.asset(
                        "assets/app_icon.png",
                        fit: BoxFit.contain,
                      )),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 130,
                    height: 130,
                    child: CircularProgressIndicator(
                      strokeWidth: 10,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.white.withOpacity(0.5)),
                    ),
                  ),
                ),
              ],
            )));
  }
}
