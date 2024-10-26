class CarModel {
  final int id;
  final String image;
  final String title;
  final int price;
  final int rentPrice;
  bool favorite;
  CarModel({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.rentPrice,
    required this.favorite,
  });
}

List<CarModel> cars = [
  CarModel(
      price: 100000,
      rentPrice: 1000,
      id: 1,
      image: 'assets/images/mer_s.png',
      title: 'Mercedes S',
      favorite: false),
  CarModel(
      id: 2,
      price: 100000,
      rentPrice: 1000,
      image: 'assets/images/mer_gls.png',
      title: ' Mercedes GLS',
      favorite: false),
  CarModel(
      price: 100000,
      rentPrice: 1000,
      id: 3,
      image: 'assets/images/mer_gle.png',
      title: 'Mercedes GLE',
      favorite: false),
  CarModel(
      id: 2,
      price: 100000,
      rentPrice: 1000,
      image: 'assets/images/mer_gls.png',
      title: ' Mercedes GLS',
      favorite: false),
  CarModel(
      id: 2,
      price: 100000,
      rentPrice: 1000,
      image: 'assets/images/mer_gls.png',
      title: ' Mercedes GLS',
      favorite: false),
  CarModel(
      id: 2,
      price: 100000,
      rentPrice: 1000,
      image: 'assets/images/mer_gls.png',
      title: ' Mercedes GLS',
      favorite: false),
];
