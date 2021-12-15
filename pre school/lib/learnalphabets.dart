import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class learnalphabet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('ENGLISH ALPHABET')),
        backgroundColor: Colors.teal[700],
      ),
      body: learnalphabets(),
    );
  }
}

class learnalphabets extends StatefulWidget {
  @override
  _learnalphabetsState createState() => _learnalphabetsState();
}

//AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

//https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3

class _learnalphabetsState extends State<learnalphabets> {
  var alphabets = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 300,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              'assets/alphabet/capital/a.webp',
              'assets/alphabet/capital/b.webp',
              'assets/alphabet/capital/c.webp',
              'assets/alphabet/capital/d.webp',
              'assets/alphabet/capital/e.webp',
              'assets/alphabet/capital/f.webp',
              'assets/alphabet/capital/g.webp',
              'assets/alphabet/capital/h.webp',
              'assets/alphabet/capital/i.webp',
              'assets/alphabet/capital/j.webp',
              'assets/alphabet/capital/k.webp',
              'assets/alphabet/capital/l.webp',
              'assets/alphabet/capital/m.webp',
              'assets/alphabet/capital/n.webp',
              'assets/alphabet/capital/o.webp',
              'assets/alphabet/capital/p.webp',
              'assets/alphabet/capital/q.webp',
              'assets/alphabet/capital/r.webp',
              'assets/alphabet/capital/s.webp',
              'assets/alphabet/capital/t.webp',
              'assets/alphabet/capital/u.webp',
              'assets/alphabet/capital/v.webp',
              'assets/alphabet/capital/w.webp',
              'assets/alphabet/capital/x.webp',
              'assets/alphabet/capital/y.webp',
              'assets/alphabet/capital/z.webp'
            ].map((i) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    children: [
                      Image.asset(i),
                      SizedBox(
                        height: 10,
                      ),
                      if (i == 'assets/alphabet/capital/a.webp')
                        Text(
                          "${alphabets[0]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/b.webp')
                        Text(
                          "${alphabets[1]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/c.webp')
                        Text(
                          "${alphabets[2]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/d.webp')
                        Text(
                          "${alphabets[3]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/e.webp')
                        Text(
                          "${alphabets[4]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/f.webp')
                        Text(
                          "${alphabets[5]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/g.webp')
                        Text(
                          "${alphabets[6]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/h.webp')
                        Text(
                          "${alphabets[7]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/i.webp')
                        Text(
                          "${alphabets[8]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/j.webp')
                        Text(
                          "${alphabets[9]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/k.webp')
                        Text(
                          "${alphabets[10]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/l.webp')
                        Text(
                          "${alphabets[11]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/m.webp')
                        Text(
                          "${alphabets[12]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/n.webp')
                        Text(
                          "${alphabets[13]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/o.webp')
                        Text(
                          "${alphabets[14]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/p.webp')
                        Text(
                          "${alphabets[15]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/q.webp')
                        Text(
                          "${alphabets[16]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/r.webp')
                        Text(
                          "${alphabets[17]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/s.webp')
                        Text(
                          "${alphabets[18]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/t.webp')
                        Text(
                          "${alphabets[19]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/u.webp')
                        Text(
                          "${alphabets[20]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/v.webp')
                        Text(
                          "${alphabets[21]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/w.webp')
                        Text(
                          "${alphabets[22]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/x.webp')
                        Text(
                          "${alphabets[23]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/y.webp')
                        Text(
                          "${alphabets[24]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/alphabet/capital/z.webp')
                        Text(
                          "${alphabets[25]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                    ],
                  ),
                );
              });
            }).toList(),
          ),
        ),
      ),
    );
  }
}
