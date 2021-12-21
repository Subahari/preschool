enum AnimalType { land, air }

class Animal {
  final String imageUrl;
  final AnimalType type;

  Animal({
    this.imageUrl,
    this.type,
  });
}

final allAnimals = [
  Animal(
    type: AnimalType.land,
    imageUrl: 'assets/Classify/animal1.png',
  ),
  Animal(
    type: AnimalType.air,
    imageUrl: 'assets/Classify/bird1.png',
  ),
  Animal(
    type: AnimalType.air,
    imageUrl: 'assets/Classify/bird2.png',
  ),
  Animal(
    type: AnimalType.land,
    imageUrl: 'assets/Classify/animal2.png',
  ),
  Animal(
    type: AnimalType.air,
    imageUrl: 'assets/Classify/bird3.png',
  ),
  Animal(
    type: AnimalType.land,
    imageUrl: 'assets/Classify/animal3.png',
  ),
];
