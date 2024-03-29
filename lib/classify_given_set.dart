import 'data.dart';

import 'utils.dart';
import 'draggable_widget.dart';
import 'package:flutter/material.dart';
//import 'package:draggable_example/main.dart';
//import 'package:draggable_example/utils.dart';

class Classify extends StatefulWidget {
  @override
  _ClassifyState createState() => _ClassifyState();
}

class _ClassifyState extends State<Classify> {
  final List<Animal> all = allAnimals;
  final List<Animal> land = [];
  final List<Animal> air = [];
  final List<Animal> fruits = [];

  final double size = 150;

  void removeAll(Animal toRemove) {
    all.removeWhere((animal) => animal.imageUrl == toRemove.imageUrl);
    land.removeWhere((animal) => animal.imageUrl == toRemove.imageUrl);
    air.removeWhere((animal) => animal.imageUrl == toRemove.imageUrl);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Classify the given set'),
          centerTitle: true,
          backgroundColor: Colors.pink[300],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildTarget(
              context,
              text: 'All',
              animals: all,
              acceptTypes: AnimalType.values,
              onAccept: (data) => setState(() {
                removeAll(data);
                all.add(data);
              }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildTarget(
                  context,
                  text: 'Animals',
                  animals: land,
                  acceptTypes: [AnimalType.land],
                  onAccept: (data) => setState(() {
                    removeAll(data);
                    land.add(data);
                  }),
                ),
                buildTarget(
                  context,
                  text: 'Birds',
                  animals: air,
                  acceptTypes: [AnimalType.air],
                  onAccept: (data) => setState(() {
                    removeAll(data);
                    air.add(data);
                  }),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildTarget(
                  context,
                  text: 'Fruits',
                  animals: fruits,
                  acceptTypes: [AnimalType.fruits],
                  onAccept: (data) => setState(() {
                    removeAll(data);
                    fruits.add(data);
                  }),
                ),
                // buildTarget(
                //   context,
                //   text: 'Birds',
                //   animals: air,
                //   acceptTypes: [AnimalType.air],
                //   onAccept: (data) => setState(() {
                //     removeAll(data);
                //     air.add(data);
                //   }),
                // ),
              ],
            ),
          ],
        ),
      );

  Widget buildTarget(
    BuildContext context, {
    @required String text,
    @required List<Animal> animals,
    @required List<AnimalType> acceptTypes,
    @required DragTargetAccept<Animal> onAccept,
  }) =>
      CircleAvatar(
        radius: size / 2,
        child: DragTarget<Animal>(
          builder: (context, candidateData, rejectedData) => Stack(
            children: [
              ...animals
                  .map((animal) => DraggableWidget(animal: animal))
                  .toList(),
              IgnorePointer(child: Center(child: buildText(text))),
            ],
          ),
          onWillAccept: (data) => true,
          onAccept: (data) {
            if (acceptTypes.contains(data.type)) {
              Utils.showSnackBar(
                context,
                text: 'This Is Correct 🥳',
                color: Colors.green,
              );
            } else {
              Utils.showSnackBar(
                context,
                text: 'This Looks Wrong 🤔',
                color: Colors.red,
              );
            }

            onAccept(data);
          },
        ),
      );

  Widget buildText(String text) => Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.8),
            blurRadius: 12,
          )
        ]),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}
