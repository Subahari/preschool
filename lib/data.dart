enum AnimalType { land, air, fruits, number }

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
    type: AnimalType.fruits,
    imageUrl: 'assets/Classify/orange.png',
  ),
  Animal(
    type: AnimalType.land,
    imageUrl: 'assets/Classify/animal1.png',
  ),
  Animal(
    type: AnimalType.number,
    imageUrl: 'assets/Classify/4.png',
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
    type: AnimalType.number,
    imageUrl: 'assets/Classify/4.png',
  ),
  Animal(
    type: AnimalType.fruits,
    imageUrl: 'assets/Classify/redapple.png',
  ),
  Animal(
    type: AnimalType.air,
    imageUrl: 'assets/Classify/bird3.png',
  ),
  Animal(
    type: AnimalType.fruits,
    imageUrl: 'assets/Classify/blueberry.png',
  ),
  Animal(
    type: AnimalType.number,
    imageUrl: 'assets/Classify/3.png',
  ),
];
