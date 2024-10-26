class SparePartItem {
  final int id;
  final String image;
  final String title;
  final String price;
  SparePartItem({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });
}

List<SparePartItem> sparePartsItems = [
  SparePartItem(
      id: 1,
      image: "assets/images/sparePart1.png",
      title: "Title",
      price: "350"),
  SparePartItem(
      id: 1,
      image: "assets/images/sparePart2.png",
      title: "Title",
      price: "350"),
  SparePartItem(
      id: 1,
      image: "assets/images/sparePart3.png",
      title: "Title",
      price: "350"),
  SparePartItem(
      id: 1,
      image: "assets/images/sparePart1.png",
      title: "Title",
      price: "350")
];
