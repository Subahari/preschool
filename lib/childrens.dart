//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preschool_learning_app/constants/e_alphabet_lists.dart';
import 'home.dart';

import 'package:audioplayers/audioplayers.dart';
import 'drag_drop.dart';

import 'learnalphabets.dart';

import 'draggable_advanced_page.dart';
import 'classify_given_set.dart';

class Childrens extends StatefulWidget {
  @override
  _ChildrensState createState() => _ChildrensState();
}

class _ChildrensState extends State<Childrens> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            //indicatorColor: Colors.deepPurple,
            // indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.pink),
            tabs: [
              Tab(
                icon: Icon(Icons.book),
                text: "Learn",
              ),
              Tab(
                icon: Icon(Icons.task),
                text: "Tasks",
              ),
              Tab(
                icon: Icon(Icons.assessment_outlined),
                text: "Quiz",
              ),
              Tab(
                icon: Icon(Icons.task),
                text: "Profile",
              ),
            ],
          ),
          title: Text('Children'),
          centerTitle: true,
          backgroundColor: Colors.pink[300],
        ),
        body: TabBarView(
          children: <Widget>[
            Learn(),
            Task(),
            Quiz(),
            Profile(),
          ],
        ),
      ),
    );
  }
}

//learning tabview
class Learn extends StatefulWidget {
  @override
  _LearnState createState() => _LearnState();
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

//https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3

class _LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/d0ba8f17649800d406496d6a4b90117a.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child:

          /*  GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          final instant = list[index];

          return  GestureDetector(
            onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => learntamil(),),),
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
                        "${instant.title}",
                        textAlign:TextAlign.center,
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
                      child: Image.asset(instant.image,errorBuilder: (_,__,___)=>Text('Image loading failed'),),
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
          );
        },
      ), */

          GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => learnalphabet(
                  title: 'TAMIL ALPHABETS',
                  list: EAlphabetLists.TamilAlphabets,
                ),
              ),
            ),
            // onTap: () {
            //   //audioCache.play('click.mp3');
            //   Navigator.push(
            //       context, MaterialPageRoute(builder: (context) => Home()));
            // },
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
                        "Tamil Alphabets",
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
                        child: Image.asset('assets/tamil.jpg'),
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
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => learnalphabet(
                  title: 'ENGLISH ALPHABETS',
                  list: EAlphabetLists.alphabets,
                ),
              ),
            ),
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
                          "English Alphabets",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Comic',
                              fontWeight: FontWeight.w600,
                              color: Colors.brown),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 80.0,
                        width: 80.0,
                        child: Image.asset('assets/abc.png'),
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
              //audioCache.play('click.mp3');
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => learnalphabet(
                          title: 'NUMBERS',
                          list: EAlphabetLists.Numbers,
                        )),
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
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => learnalphabet(
                  title: 'FRUITS',
                  list: EAlphabetLists.fruits,
                ),
              ),
            ),
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
              // audioCache.play('click.mp3');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => learnalphabet(
                            title: 'COLORS',
                            list: EAlphabetLists.Colors,
                          )));
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
                        "Colors",
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
                      child: Image.asset('assets/color.jpg'),
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
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(23.0),
              child: Container(
                width: 80.0,
                height: 80.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "Poem/Rhymes",
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
                      child: Image.asset('assets/poem.jpg'),
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
        ],
      ),
    );
  }
}

/////Task tabview
class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

//AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

//https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3

class _TaskState extends State<Task> {
  //AudioPlayer advancePlayer;
  //AudioCache audioCache;
  //initiate the Playing

  @override
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
          image: AssetImage('assets/task.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: <Widget>[
          GestureDetector(
            onTap: () {
              //audioCache.play('click.mp3');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => drag()),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(23.0),
              child: Container(
                width: 150.0,
                height: 120.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "Drag and drop",
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
                      child: Image.asset('assets/drag-drop-350.png'),
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
                  MaterialPageRoute(
                      builder: (context) => DraggableAdvancedPage()));
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
                          "Classify the given set elements",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Comic',
                              fontWeight: FontWeight.w600,
                              color: Colors.brown),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 80.0,
                        width: 80.0,
                        child: Image.asset('assets/classification.jpg'),
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
                  context, MaterialPageRoute(builder: (context) => Home()));
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
                        "Word puzzle",
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
                      child: Image.asset('assets/wordpuzzle.png'),
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
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(23.0),
              child: Container(
                width: 80.0,
                height: 80.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Center(
                        child: Text(
                          "Match with correct solution",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Comic',
                              fontWeight: FontWeight.w600,
                              color: Colors.brown),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 80.0,
                        width: 80.0,
                        child: Image.asset('assets/match.jpg'),
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

/////Quiz tab view
class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

//AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

//https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3

class _QuizState extends State<Quiz> {
  //AudioPlayer advancePlayer;
  //AudioCache audioCache;
  //initiate the Playing

  @override
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
          image: AssetImage('assets/quiz.jfif'),
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
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
                        "Image Quiz",
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
                      child: Image.asset('assets/imgquiz.png'),
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
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(23.0),
              child: Container(
                width: 100.0,
                height: 100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "Audio Quiz",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Comic',
                            fontWeight: FontWeight.w600,
                            color: Colors.brown),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        child: Image.asset('assets/audio.png'),
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

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String localFilePath;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white30,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(30.0),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.blue,
                    foregroundImage: AssetImage('assets/profile/avatar.png'),
                    backgroundImage: AssetImage('assets/profile/down.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50.0),
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Name',
                          style: TextStyle(
                            fontFamily: 'FROSTY',
                            fontSize: 40.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'My Aim',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 20.0,
                            color: Colors.red,
                            letterSpacing: 2.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Points',
                        style: TextStyle(
                          color: Colors.yellow.shade900,
                          wordSpacing: 20.0,
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100.0,
                    ),
                    Container(
                      child: Text(
                        '?',
                        style: TextStyle(
                          color: Colors.yellow.shade900,
                          wordSpacing: 20.0,
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                  vertical: 15.0, horizontal: 15.0), // height: 100.0,
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text(
                        'Progress',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.yellow.shade900,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text(
                        'Achivement',
                        style: TextStyle(
                          color: Colors.yellow.shade900,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: ListTile(
                        leading: ClipOval(
                          child: Image.asset(
                            'assets/profile/achive.jpg',
                          ),
                        ),
                        title: Text(
                          'There are no achivement',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
