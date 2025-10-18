class Product {
  int id;
  String name;
  String category;
  String image;
  double price;
  bool isliked;
  bool isSelected;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.price,
    this.isliked = false,
    this.isSelected = false,
  });
}
