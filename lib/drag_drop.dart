import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:audioplayers/audio_cache.dart';
import 'childrens.dart';
import 'colordrag.dart';
import 'symbols.dart';
import 'animal.dart';
import 'dragcolour.dart';
import 'dragnumber.dart';
import 'dragfruits.dart';

class drag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('DRAG & DROP LEARN')),
        backgroundColor: Colors.pink[300],
        leading: BackButton(
          onPressed: () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => Childrens(),
              ),
              (route) => false),
        ),
      ),
      body: drags(),
    );
  }
}

class drags extends StatefulWidget {
  @override
  _dragsState createState() => _dragsState();
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

//https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3

class _dragsState extends State<drags> {
  //AudioPlayer advancePlayer;
  //AudioCache audioCache;
  //initiate the Playing

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   initPlayer();
  // }

  // void initPlayer() {
  //  // advancePlayer = AudioPlayer();
  //   audioCache = AudioCache(fixedPlayer: advancePlayer);

  //   advancePlayer.durationHandler = (d) => setState(() {});
  // }

  String localFilePath;

  @override
  Widget build(BuildContext context) {
    //final player = AudioCache();
    // AudioCache player = AudioCache(prefix: 'audio/');
    //player.play('assets/audio/sample.mp3');
    //player.load('sample.mp3');
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/learn11.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: <Widget>[
          GestureDetector(
            onTap: () {
              // audioCache.play('click.mp3');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Colordrag()));
            },
            child: Padding(
              padding: EdgeInsets.all(23.0),
              child: Container(
                width: 80.0,
                height: 70.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        "Colours",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Comic',
                            fontWeight: FontWeight.w600,
                            color: Colors.brown),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 80.0,
                        width: 80.0,
                        child: Image.asset('assets/color.jpg'),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(2, 1),
                        blurRadius: 10.0,
                      ),
                    ]),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // audioCache.play('click.mp3');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => animal()));
            },
            child: Padding(
              padding: EdgeInsets.all(23.0),
              child: Container(
                width: 80.0,
                height: 70.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Center(
                        child: Text(
                          "Animals",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Comic',
                              fontWeight: FontWeight.w600,
                              color: Colors.brown),
                        ),
                      ),
                    ),
                    Container(
                      height: 80.0,
                      width: 80.0,
                      child: Image.asset('assets/abc.png'),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(2, 1),
                        blurRadius: 10.0,
                      ),
                    ]),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              //audioCache.play('click.mp3');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Numberdrag()),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(23.0),
              child: Container(
                width: 80.0,
                height: 70.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "Numbers",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Comic',
                            fontWeight: FontWeight.w600,
                            color: Colors.brown),
                      ),
                    ),
                    Container(
                      height: 80.0,
                      width: 80.0,
                      child: Image.asset('assets/number.png'),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(2, 1),
                        blurRadius: 10.0,
                      ),
                    ]),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              //audioCache.play('click.mp3');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Fruits()));
            },
            child: Padding(
              padding: EdgeInsets.all(23.0),
              child: Container(
                width: 80.0,
                height: 70.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "Fruits",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Comic',
                            fontWeight: FontWeight.w600,
                            color: Colors.brown),
                      ),
                    ),
                    Container(
                      height: 80.0,
                      width: 80.0,
                      child: Image.asset('assets/fruit.jpg'),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(2, 1),
                        blurRadius: 10.0,
                      ),
                    ]),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              //Symbols
              // audioCache.play('click.mp3');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Symbols()));
            },
            child: Padding(
              padding: EdgeInsets.all(23.0),
              child: Container(
                width: 80.0,
                height: 70.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Center(
                        child: Text(
                          "Symbols",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Comic',
                              fontWeight: FontWeight.w600,
                              color: Colors.brown),
                        ),
                      ),
                    ),
                    Container(
                      height: 80.0,
                      width: 80.0,
                      child: Image.asset('assets/abc.png'),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(2, 1),
                        blurRadius: 10.0,
                      ),
                    ]),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // audioCache.play('click.mp3');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Colourdrag()));
            },
            child: Padding(
              padding: EdgeInsets.all(23.0),
              child: Container(
                width: 80.0,
                height: 70.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        "Colours",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Comic',
                            fontWeight: FontWeight.w600,
                            color: Colors.brown),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 80.0,
                        width: 80.0,
                        child: Image.asset('assets/color.jpg'),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(2, 1),
                        blurRadius: 10.0,
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
