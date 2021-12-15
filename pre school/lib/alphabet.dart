import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:audioplayers/audio_cache.dart';
import 'package:cache_audio_player/cache_audio_player.dart';

class AlphabetLayout extends StatefulWidget {
  @override
  _AlphabetLayoutState createState() => _AlphabetLayoutState();
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

class _AlphabetLayoutState extends State<AlphabetLayout> {
  List<String> alphabetical = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
  ];

  AudioPlayer advancePlayer;
  AudioCache audioCache;
  //initiate the Playing

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    advancePlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: advancePlayer);

    advancePlayer.durationHandler = (d) => setState(() {});
  }

  String localFilePath;

  int main = 0;

  @override
  Widget build(BuildContext context) {
    var _list = 0;

    void DisplayList() {
      setState(() {
        _list = _list++;
      });
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/arrow2.png'),
        ),
        elevation: 0.0,
        backgroundColor: Colors.orange,
        title: Text("Alphabetical"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/background.png'),
          fit: BoxFit.cover,
        )),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CarouselSlider(
                autoPlay: true,
                autoPlayInterval: Duration(milliseconds: 2700),
                height: 400.0,
                initialPage: 0,
                reverse: false,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  if (alphabetical[index] == 'a') {
                    if (audioCache.play('assets/alphabet/audio/a.mp3') ==
                        audioCache.play('assets/alphabet/audio/a.mp3')) {
                      audioCache.play('assets/alphabet/audio/a.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/b') {
                    if (audioCache.play('assets/alphabet/audio/b.mp3') ==
                        audioCache.play('assets/alphabet/audio/b.mp3')) {
                      audioCache.play('assets/alphabet/audio/b.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/c') {
                    if (audioCache.play('assets/alphabet/audio/c.mp3') ==
                        audioCache.play('assets/alphabet/audio/c.mp3')) {
                      audioCache.play('assets/alphabet/audio/c.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/d') {
                    if (audioCache.play('assets/alphabet/audio/d.mp3') ==
                        audioCache.play('assets/alphabet/audio/d.mp3')) {
                      audioCache.play('assets/alphabet/audio/d.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/e') {
                    if (audioCache.play('assets/alphabet/audio/e.mp3') ==
                        audioCache.play('assets/alphabet/audio/e.mp3')) {
                      audioCache.play('assets/alphabet/audio/e.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/f') {
                    if (audioCache.play('assets/alphabet/audio/f.mp3') ==
                        audioCache.play('assets/alphabet/audio/f.mp3')) {
                      audioCache.play('assets/alphabet/audio/f.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/g') {
                    if (audioCache.play('assets/alphabet/audio/g.mp3') ==
                        audioCache.play('assets/alphabet/audio/g.mp3')) {
                      audioCache.play('assets/alphabet/audio/g.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/h') {
                    if (audioCache.play('assets/alphabet/audio/h.mp3') ==
                        audioCache.play('assets/alphabet/audio/h.mp3')) {
                      audioCache.play('assets/alphabet/audio/h.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/i') {
                    if (audioCache.play('assets/alphabet/audio/i.mp3') ==
                        audioCache.play('assets/alphabet/audio/i.mp3')) {
                      audioCache.play('assets/alphabet/audio/i.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/j') {
                    if (audioCache.play('assets/alphabet/audio/j.mp3') ==
                        audioCache.play('j.mp3')) {
                      audioCache.play('assets/alphabet/audio/j.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/k') {
                    if (audioCache.play('assets/alphabet/audio/k.mp3') ==
                        audioCache.play('assets/alphabet/audio/k.mp3')) {
                      audioCache.play('assets/alphabet/audio/k.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/l') {
                    if (audioCache.play('assets/alphabet/audio/l.mp3') ==
                        audioCache.play('assets/alphabet/audio/l.mp3')) {
                      audioCache.play('assets/alphabet/audio/l.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/m') {
                    if (audioCache.play('assets/alphabet/audio/m.mp3') ==
                        audioCache.play('assets/alphabet/audio/m.mp3')) {
                      audioCache.play('assets/alphabet/audio/m.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/n') {
                    if (audioCache.play('assets/alphabet/audio/n.mp3') ==
                        audioCache.play('assets/alphabet/audio/n.mp3')) {
                      audioCache.play('assets/alphabet/audio/n.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/o') {
                    if (audioCache.play('assets/alphabet/audio/o.mp3') ==
                        audioCache.play('assets/alphabet/audio/o.mp3')) {
                      audioCache.play('assets/alphabet/audio/o.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/p') {
                    if (audioCache.play('assets/alphabet/audio/p.mp3') ==
                        audioCache.play('assets/alphabet/audio/p.mp3')) {
                      audioCache.play('assets/alphabet/audio/p.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/q') {
                    if (audioCache.play('assets/alphabet/audio/q.mp3') ==
                        audioCache.play('assets/alphabet/audio/q.mp3')) {
                      audioCache.play('assets/alphabet/audio/q.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/r') {
                    if (audioCache.play('assets/alphabet/audio/r.mp3') ==
                        audioCache.play('assets/alphabet/audio/r.mp3')) {
                      audioCache.play('assets/alphabet/audio/r.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/s') {
                    if (audioCache.play('assets/alphabet/audio/s.mp3') ==
                        audioCache.play('assets/alphabet/audio/s.mp3')) {
                      audioCache.play('s.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/t') {
                    if (audioCache.play('assets/alphabet/audio/t.mp3') ==
                        audioCache.play('assets/alphabet/audio/t.mp3')) {
                      audioCache.play('assets/alphabet/audio/t.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/u') {
                    if (audioCache.play('assets/alphabet/audio/u.mp3') ==
                        audioCache.play('assets/alphabet/audio/u.mp3')) {
                      audioCache.play('assets/alphabet/audio/u.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/v') {
                    if (audioCache.play('assets/alphabet/audio/v.mp3') ==
                        audioCache.play('assets/alphabet/audio/v.mp3')) {
                      audioCache.play('assets/alphabet/audio/v.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/w') {
                    if (audioCache.play('assets/alphabet/audio/w.mp3') ==
                        audioCache.play('assets/alphabet/audio/w.mp3')) {
                      audioCache.play('assets/alphabet/audio/w.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/x') {
                    if (audioCache.play('assets/alphabet/audio/x.mp3') ==
                        audioCache.play('assets/alphabet/audio/x.mp3')) {
                      audioCache.play('assets/alphabet/audio/x.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/y') {
                    if (audioCache.play('assets/alphabet/audio/y.mp3') ==
                        audioCache.play('assets/alphabet/audio/y.mp3')) {
                      audioCache.play('assets/alphabet/audio/y.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'assets/alphabet/audio/z') {
                    if (audioCache.play('assets/alphabet/audio/z.mp3') ==
                        audioCache.play('assets/alphabet/audio/z.mp3')) {
                      audioCache.play('assets/alphabet/audio/z.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                },
                items: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "A",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "A for Apple",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/a.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "B",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "B for Ball",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabe/b.jpeg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "C",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "C for Cat",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/c.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "D",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "D for Dog",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/d.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "E",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "E for Elephant",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/e.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "F",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "F for Fish",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/f.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/g.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "G",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "G for Grapes",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/g.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/h.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "H",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "H for Hat",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/h.jfif'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/i.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "I",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "I for Ice cream",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/i.webp'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/j.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "J",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "J for Juice",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/j.jfif'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/k.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "K",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "K for kite",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/k.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/l.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "L",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "L for Lion",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/lion.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/m.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/music/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "M",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "M for Monkey",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/m.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/n.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "N",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "N for Nose",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/n.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/o.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "O",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "O for Orange",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/o.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/p.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "P",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "P for Parrot",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/p.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/q.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "Q",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "Q for Queen",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/q.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/r.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "R",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "R for Rabbit",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/r1.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/s.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "S",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "S for Sun",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/s.jfif'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/t.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "T",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "T for Tiger",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/t.webp'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/u.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "U",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "U for Umbrella",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/u.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/v.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "V",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "V for Violin",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/v.webp'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/w.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "W",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "W for WaterMelon",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/w.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/x.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "X",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "X for Xylophone",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/x.jpeg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/y.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "Y",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "Y for Yacht",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/y.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('assets/alphabet/audio/z.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    bottom: 5.0,
                                    right: 85.0,
                                    child: Container(
                                      height: 34.0,
                                      width: 34.0,
                                      child: Image.asset(
                                        'assets/hand.png',
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "Z",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "Z for Zebra",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/alphabet/z.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
