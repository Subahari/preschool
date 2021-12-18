import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class learntamil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('தமிழ் எழுத்துக்கள்')),
        backgroundColor: Colors.teal[700],
      ),
      body: learntamils(),
    );
  }
}

class learntamils extends StatefulWidget {
  @override
  _learntamilsState createState() => _learntamilsState();
}

//AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

//https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3

class _learntamilsState extends State<learntamils> {
  var tamilletter = [
    'அ',
    'ஆ',
    'இ',
    'ஈ',
    'உ',
    'ஊ',
    'எ',
    'ஏ',
    'ஐ',
    'ஒ',
    'ஓ',
    'ஔ'
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
              'assets/tamil/tamil letter/1.png',
              'assets/tamil/tamil letter/2.png',
              'assets/tamil/tamil letter/3.png',
              'assets/tamil/tamil letter/4.png',
              'assets/tamil/tamil letter/5.png',
              'assets/tamil/tamil letter/6.png',
              'assets/tamil/tamil letter/7.png',
              'assets/tamil/tamil letter/8.jfif',
              'assets/tamil/tamil letter/9.jpg',
              'assets/tamil/tamil letter/10.jfif',
              'assets/tamil/tamil letter/11.png',
              'assets/tamil/tamil letter/12.png'
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
                      if (i == 'assets/tamil/tamil letter/1.png')
                        Text(
                          "${tamilletter[0]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/tamil/tamil letter/2.png')
                        Text(
                          "${tamilletter[1]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/tamil/tamil letter/3.png')
                        Text(
                          "${tamilletter[2]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/tamil/tamil letter/4.png')
                        Text(
                          "${tamilletter[3]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/tamil/tamil letter/5.png')
                        Text(
                          "${tamilletter[4]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/tamil/tamil letter/6.png')
                        Text(
                          "${tamilletter[5]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/tamil/tamil letter/7.png')
                        Text(
                          "${tamilletter[6]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/tamil/tamil letter/8.jfif')
                        Text(
                          "${tamilletter[7]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/tamil/tamil letter/9.jpg')
                        Text(
                          "${tamilletter[8]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/tamil/tamil letter/10.jfif')
                        Text(
                          "${tamilletter[9]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/tamil/tamil letter/11.png')
                        Text(
                          "${tamilletter[10]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/tamil/tamil letter/12.png')
                        Text(
                          "${tamilletter[11]}",
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
