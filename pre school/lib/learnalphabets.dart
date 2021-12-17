import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:preschool_learning_app/services/audio_service.dart';
import 'package:preschool_learning_app/constants/e_alphabet_lists.dart';

class learnalphabet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('ENGLISH ALPHABETS')),
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
  CarouselControllerImpl controller = CarouselControllerImpl();

  @override
  Widget build(BuildContext context) {
    final alphabets = EAlphabetLists.alphabets;
    // controller.
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CarouselSlider(
            carouselController: controller,
            options: CarouselOptions(
              height: 300,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              // autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: alphabets.map((imageAudio) {
              final assetPath = imageAudio.audio;
              return Builder(builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            imageAudio.image,
                            height: 200,
                          ),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.speaker_phone_outlined,
                              size: 48,
                            ),
                            onPressed: () => AudioService.playAudio(assetPath))
                      ],
                    ));
              });
            }).toList(),
          ),
        ),
      ),
    );
  }
}
