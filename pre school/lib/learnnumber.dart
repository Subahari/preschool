import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class learnnumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Numbers')),
        backgroundColor: Colors.teal[700],
      ),
      body: learnnumbers(),
    );
  }
}

class learnnumbers extends StatefulWidget {
  @override
  _learnnumbersState createState() => _learnnumbersState();
}

//AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

//https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3

class _learnnumbersState extends State<learnnumbers> {
  var number = [
    'one',
    'two',
    'Three',
    'four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten'
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
              'assets/number/1.webp',
              'assets/number/2.webp',
              'assets/number/3.webp',
              'assets/number/4.webp',
              'assets/number/5.webp',
              'assets/number/6.webp',
              'assets/number/7.webp',
              'assets/number/8.webp',
              'assets/number/9.webp',
              'assets/number/10.webp'
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
                      if (i == 'assets/number/1.webp')
                        Text(
                          "${number[0]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/number/2.webp')
                        Text(
                          "${number[1]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/number/3.webp')
                        Text(
                          "${number[2]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/number/4.webp')
                        Text(
                          "${number[3]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/number/5.webp')
                        Text(
                          "${number[4]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/number/6.webp')
                        Text(
                          "${number[5]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/number/7.webp')
                        Text(
                          "${number[6]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/number/8.webp')
                        Text(
                          "${number[7]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/number/9.webp')
                        Text(
                          "${number[8]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        ),
                      if (i == 'assets/number/10.webp')
                        Text(
                          "${number[9]}",
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



//  Widget build(BuildContext context) => Column(
//     children: <Widget>[
//       CarouselSlider(
//         items: child,
//         carouselController: buttonCarouselController,
//         options: CarouselOptions(
//           autoPlay: false,
//           enlargeCenterPage: true,
//           viewportFraction: 0.9,
//           aspectRatio: 2.0,
//           initialPage: 2,
//         ),
//       ),
//       RaisedButton(
//         onPressed: () => buttonCarouselController.nextPage(
//             duration: Duration(milliseconds: 300), curve: Curves.linear),
//         child: Text('→'),
//       )
//     ]
//   );
// }