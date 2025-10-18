
class Category {
  int? id;
  String name;
  String? image;
  bool isSelected;

  Category({
    this.id,
    required this.name,
    this.isSelected = false,
    this.image,
  });
}
