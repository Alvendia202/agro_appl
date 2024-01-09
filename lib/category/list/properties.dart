class Item {
  final int id;
  final String name, desc;
  final List<String> images;
  final String unit;
  final double price, rating;
  final bool isFavourite, isPopular;

  Item({
    required this.id,
    required this.name,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.unit,
    required this.price,
    required this.images,
    required this.desc,
  });

  Map toJson() {
    return {
      'name': name,
      'unit': unit,
      'price': price,
      'image': images,
    };
  }
}
