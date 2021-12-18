import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:preschool_learning_app/services/audio_service.dart';
import 'package:preschool_learning_app/constants/e_alphabet_lists.dart';

class learnalphabet extends StatelessWidget {
  final List list;
  final String title;

  const learnalphabet({Key key, this.title, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
        centerTitle: true,
        backgroundColor: Colors.teal[700],
      ),
      body: learnalphabets(
        list: list,
      ),
    );
  }
}

class learnalphabets extends StatefulWidget {
  final List list;

  const learnalphabets({Key key, this.list}) : super(key: key);
  @override
  _learnalphabetsState createState() => _learnalphabetsState();
}

//https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3

class _learnalphabetsState extends State<learnalphabets> {
  CarouselControllerImpl controller = CarouselControllerImpl();

  @override
  Widget build(BuildContext context) {
    final alphabets = widget.list;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/bg.jfif',
            fit: BoxFit.fitHeight,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
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
                    final _assetPath = imageAudio.audio;
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
                                FontAwesome.volume_up,
                                size: 38,
                                color: Colors.white,
                              ),
                              onPressed: () =>
                                  AudioService.playAudio(_assetPath),
                            ),
                          ],
                        ),
                      );
                    });
                  }).toList(),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () => controller.previousPage(),
                ),
                // IconButton(
                //   icon: Icon(
                //     FontAwesome.volume_up,
                //     size: 38,
                //   ),
                //   onPressed: () => AudioService.playAudio(assetPath),
                // ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () => controller.nextPage(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
