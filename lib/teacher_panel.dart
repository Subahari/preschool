import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preschool_learning_app/pages/upload_image_quiz.dart';
import 'home.dart';
import 'childrens.dart';

class Teacher extends StatefulWidget {
  @override
  _TeacherState createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.add_task_sharp),
                text: "Upload Quiz",
              ),
              Tab(
                  icon: Icon(Icons.add_circle_sharp),
                  text: "Assign Childrens ID"),
            ],
          ),
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {},
          // ),

          title: Text('Teachers'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        // body: TabBarView(
        //   children: [
        //     Center(child: Text("Page 1")),
        //     Center(
        //         child: Text("அம்மா",
        //             style: TextStyle(
        //               fontFamily: "ArimaMadurai-Black",
        //             ))),
        //   ],
        // ),

        // body: TabBarView(
        //   children: [
        //     Center(
        //       child: Text("Page 10")
        //       ),
        //     Center(child: Text("Page 20")),
        //     Center(child: Text("Page 3")),
        //   ],
        // ),
        body: TabBarView(
          children: <Widget>[
            //NewRecipe(),
            //SignInPage(),
            UploadQuiz(), AssignchildrensID(),

            // Container(
            //   child: Center(
            //     child: Text(
            //       'Tasks sections',
            //     ),
            //   ),
            // ),
            // Container(
            //   child: Center(
            //     child: Text(
            //       'Quiz Sections',
            //     ),
            //   ),
            // ),
          ],
        ),
        drawer: Drawer(
          elevation: 10.0,
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text('Suba'),
                accountEmail: Text('suba@gmail.com'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

////UploadQuiz
class UploadQuiz extends StatefulWidget {
  @override
  _UploadQuizState createState() => _UploadQuizState();
}

//AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

//https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3

class _UploadQuizState extends State<UploadQuiz> {
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
          image: AssetImage('assets/Top_new.webp'),
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
                  MaterialPageRoute(builder: (context) => UploadImageQuiz()));
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
                        "Upload Image Quiz",
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
                        child: Image.asset('assets/imgquiz.png'),
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
                        " Upload Audio Quiz",
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

///AssignchildrensID
class AssignchildrensID extends StatefulWidget {
  @override
  _AssignchildrensIDState createState() => _AssignchildrensIDState();
}

class _AssignchildrensIDState extends State<AssignchildrensID> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Assign Children',
                      style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Name & Index No',
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Children Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Index no',
                    ),
                  ),
                ),
                // FlatButton(
                //   onPressed: () {
                //     //forgot password screen
                //   },
                //   textColor: Colors.blue,
                //   child: Text('Forgot Password'),
                // ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.teal,
                      child: Text('Assign'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                // Container(
                //     child: Row(
                //   children: <Widget>[
                //     Text('Does not have account?'),
                //     FlatButton(
                //       textColor: Colors.blue,
                //       child: Text(
                //         'Sign in',
                //         style: TextStyle(fontSize: 20),
                //       ),
                //       onPressed: () {
                //         //signup screen
                //       },
                //     )
                //   ],
                //   mainAxisAlignment: MainAxisAlignment.center,
                // ))
              ],
            )));
  }
}
