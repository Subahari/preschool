import 'package:flutter/material.dart';
import 'dart:math';
import 'drag_drop.dart';
//import 'package:audioplayers/audio_cache.dart';

class Colordrag extends StatefulWidget {
  Colordrag({Key key}) : super(key: key);

  createState() => ColordragState();
}

class ColordragState extends State<Colordrag> {
  /// Map to keep track of score
  final Map<String, bool> score = {};

  /// Choices for game
  final Map choices = {
    '🍏': Colors.green,
    '🍎': Colors.red,
    '🍊': Colors.orange,
    '🍇': Colors.purple,
    '🍌': Colors.yellow,
    '🥥': Colors.brown,
    '🍄': Colors.pinkAccent,
    '🥒': Colors.green,
    '🍋': Colors.yellowAccent,
    '🍆': Colors.purpleAccent,
  };
  int seed = 0;
  //AudioCache _audioCache = AudioCache();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    height = height - 200;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        centerTitle: true,
        title: Row(mainAxisSize: MainAxisSize.min, children: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () => Navigator.pop(context),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Color Drag & Drop ",
            style: TextStyle(color: Colors.white),
          ),
        ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Match The Fruit With the Color",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Score: ",
                  style: TextStyle(
                      fontFamily: "Pacifico", fontSize: 20, color: Colors.teal),
                ),
                Text(
                  "${score.length}",
                  style: TextStyle(
                      fontFamily: "Lobster", fontSize: 35, color: Colors.red),
                ),
                Text(
                  " /10",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: choices.keys.map((emoji) {
                    print(emoji);
                    return Draggable<String>(
                      data: emoji,
                      child: Emoji(emoji: score[emoji] == true ? '✔' : emoji),
                      feedback: Emoji(
                        emoji: emoji,
                      ),
                      childWhenDragging: Emoji(emoji: '🤔'),
                    );
                  }).toList()
                    ..shuffle(Random(seed + 3)),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: choices.keys
                      .map((emoji) => buildDragTarget(emoji))
                      .toList()
                    ..shuffle(Random(seed)),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal[700],
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            score.clear();
            seed++;
          });
        },
      ),
    );
  }

  Widget buildDragTarget(emoji) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming, List rejected) {
        double height = MediaQuery.of(context).size.height;
        height = height - 200;
        if (score[emoji] == true) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              color: Colors.transparent,
              child: Text("Correct",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              alignment: Alignment.center,
              height: height / 12,
              width: 140,
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              color: choices[emoji],
              height: height / 12 - 2,
              width: 145,
            ),
          );
        }
      },
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        setState(() {
          score[emoji] = true;
          if (score.length == 10) {
            dialogue(context);
          }
        });
        // _audioCache.play("successful.mp3");
      },
      onLeave: (data) {},
    );
  }
}

class Emoji extends StatelessWidget {
  Emoji({Key key, this.emoji}) : super(key: key);
  final String emoji;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    height = height - 200;
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          alignment: Alignment.center,
          height: height / 12 - 2,
          child: Text(
            emoji,
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
      ),
    );
  }
}

dialogue(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Score=10/10",
            textAlign: TextAlign.center,
          ),
          actionsPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          elevation: 2,
          actions: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Image.asset("assets/success.gif")),
                FlatButton(
                    color: Colors.teal[700],
                    child: Text("Next Game"),
                    onPressed: () {
                      // Navigator.pop(context);
                      // Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => drag()));
                    })
              ],
            ),
          ],
        );
      });
}
