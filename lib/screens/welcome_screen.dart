import 'package:flutter/material.dart';
import 'package:preschool_learning_app/constants/appcolors.dart';
import 'package:preschool_learning_app/screens/login_screen.dart';
import 'package:preschool_learning_app/screens/registration_screen.dart';
import 'package:preschool_learning_app/constants/themebutton.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.black,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.33,
                    child:
                        Image.asset('assets/app_logo.png', fit: BoxFit.cover),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: ClipOval(
                          child: Container(
                            width: 140,
                            height: 140,
                            color: AppColors.DARK_GREEN,
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 100,
                                child: Image.asset(
                                  "assets/app_icon.png",
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('Doodle',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 25),
                      Text('We value every child ',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      SizedBox(height: 140),
                      ThemeButton(
                        label: 'User Login',
                        highlight: Colors.green[100],
                        color: AppColors.DARK_GREEN,
                        onClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                      ),
                      ThemeButton(
                          label: "User Registration",
                          labelColor: Colors.white,
                          color: Colors.transparent,
                          highlight: AppColors.MAIN_COLOR.withOpacity(0.5),
                          borderColor: AppColors.MAIN_COLOR,
                          borderWidth: 4,
                          onClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RegistrationScreen()));
                          })
                    ],
                  ),
                )
              ],
            )));
  }
}
