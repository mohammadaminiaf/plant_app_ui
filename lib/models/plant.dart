class Plant {
  final String name;
  final double price;
  final String subname;
  final String imageUrl;

  Plant({
    required this.name,
    required this.price,
    required this.subname,
    required this.imageUrl,
  });
}

final dummyPlants = [
  Plant(
    imageUrl: 'assets/images/plant.png',
    name: 'Snake Plants',
    subname: 'Sansevieria',
    price: 12.99,
  ),
  Plant(
    imageUrl: 'assets/images/plant2.png',
    name: 'Lucky Jade plant',
    subname: 'Crassula ovata',
    price: 12.99,
  ),
  Plant(
    imageUrl: 'assets/images/plant3.png',
    name: 'Small Plant',
    subname: 'Super greens',
    price: 9.99,
  ),
  Plant(
    imageUrl: 'assets/images/plant4.png',
    name: 'Peperomia plant',
    subname: 'Super greens',
    price: 12.99,
  ),
  Plant(
    imageUrl: 'assets/images/plant.png',
    name: 'Small Plant Super green',
    subname: 'Pilea peperomioides',
    price: 9.99,
  ),
];
