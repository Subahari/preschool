<<<<<<< HEAD
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:preschool_learning_app/constants/appcolors.dart';
import 'package:preschool_learning_app/lists/lesson.dart';
import 'package:preschool_learning_app/screens/login_screen.dart';
import 'package:preschool_learning_app/widgets/grid_card.dart';
import 'drag_drop.dart';
=======
//import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:preschool_learning_app/constants/appcolors.dart';
import 'package:preschool_learning_app/constants/e_alphabet_lists.dart';
import 'package:preschool_learning_app/screens/login_screen.dart';
>>>>>>> 7a7fc7e69ea5fcbc1cc69e00ac4cc33e6154e3ed
import 'home.dart';
import 'package:audioplayers/audioplayers.dart';
import 'draggable_advanced_page.dart';

class BottomNav {
  final String title;
  final IconData icon;
  final Widget body;

  BottomNav({this.title, this.icon, this.body});
}

final List<BottomNav> bottomNavItems = [
  BottomNav(
    title: 'Learn',
    icon: Icons.book,
    body: Learn(),
  ),
  BottomNav(
    title: 'Task',
    icon: Icons.task,
    body: Task(),
  ),
  BottomNav(
    title: 'Quiz',
    icon: Icons.assignment,
    body: Quiz(),
  ),
];

class BottomNav {
  final String title;
  final IconData icon;
  final Widget body;

  BottomNav({this.title, this.icon, this.body});
}

final List<BottomNav> bottomNavItems = [
  BottomNav(
    title: 'Learn',
    icon: Icons.book,
    body: Learn(),
  ),
  BottomNav(
    title: 'Task',
    icon: Icons.task,
    body: Task(),
  ),
  BottomNav(
    title: 'Quiz',
    icon: Icons.assignment,
    body: Quiz(),
  ),
];

class Childrens extends StatefulWidget {
  @override
  _ChildrensState createState() => _ChildrensState();
}

class _ChildrensState extends State<Childrens> {
  // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Doodle'),
        centerTitle: true,
        backgroundColor: AppColors.BUTTON_AUTH,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => logout(context),
          )
        ],
      ),
      body: bottomNavItems.elementAt(_currentIndex).body,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.BUTTON_AUTH,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blueGrey, //TODO: CHANGE COLOR
        currentIndex: _currentIndex,
        onTap: (val) => setState(() => _currentIndex = val),
        items: bottomNavItems
            .map(
              (item) => BottomNavigationBarItem(
                icon: Icon(item.icon),
                label: item.title,
              ),
            )
            .toList(),
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
      child: GridView.builder(
        padding: const EdgeInsets.all(25.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.96,
          crossAxisSpacing: 25.0,
          mainAxisSpacing: 25.0,
        ),
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          return GridCard(lesson: lessons[index]);
        },
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
