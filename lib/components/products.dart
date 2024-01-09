class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final double rating, price;
  final bool isFavourite, 
              isPopular,
              isGrains,
              isVeges,
              isFruits,
              isMeat;

  Product({
    required this.id,
    required this.images,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    this.isGrains = false,
    this.isVeges = false,
    this.isFruits = false,
    this.isMeat = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> Products = [
  Product(
    id: 1,
    images: [
      "assets/images/avocado.png",
      "assets/images/avocado1.png",
    ],
    title: "Avocado",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/corn.png",
      "assets/images/corn1.png",
      "assets/images/corn2.png",
    ],
    title: "Corn",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/veges.png",
    ],
    title: "Banana",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/veges.png",
    ],
    title: "Onion",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/veges.png",
    ],
    title: "Palay",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 6,
    images: [
      "assets/images/veges.png",
    ],
    title: "Beans",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 7,
    images: [
      "assets/images/veges.png",
    ],
    title: "Beans",
    price: 50.5,
    description: description,
    rating: 4.1,
    isVeges: true,
  ),
  Product(
    id: 7,
    images: [
      "assets/images/veges.png",
    ],
    title: "Beans",
    price: 50.5,
    description: description,
    rating: 4.1,
    isFruits: true,
  ),
  Product(
    id: 7,
    images: [
      "assets/images/veges.png",
    ],
    title: "Beans",
    price: 50.5,
    description: description,
    rating: 4.1,
    isGrains: true,
  ),
  Product(
    id: 7,
    images: [
      "assets/images/veges.png",
    ],
    title: "Beans",
    price: 50.5,
    description: description,
    rating: 4.1,
    isMeat: true,
  ),
];

const String description =
    "Agriculture is life";