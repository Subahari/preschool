import 'package:flutter/material.dart';
import 'package:preschool_learning_app/models/lesson.dart';

class GridCard extends StatelessWidget {
  final Lesson lesson;

  const GridCard({Key key, @required this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => lesson.routeWidget,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
              child: Text(
                lesson.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Comic',
                    fontWeight: FontWeight.w600,
                    color: Colors.brown),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(lesson.image),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(2, 1),
                blurRadius: 10.0,
              ),
            ]),
      ),
    );
  }
}
