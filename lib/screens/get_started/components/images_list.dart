class Slide {
  final String imagePath;
  final String title;
  final String desc;

  Slide({
    required this.imagePath,
    required this.title,
    required this.desc, 
    required String imageSize,
  });
}

List<Slide> getSlides() {
  return [
    Slide(
      desc: "Discover shop offering the best agricultural products",
      title: "Search",
      imagePath: "assets/images/get1.jpg",
      imageSize: "300x300",
    ),
    Slide(
      desc: "Our plan is filled with delicious seasonal vegetables, whole grains, beautiful cheeses and vegetarian proteins",
      title: "Order",
      imagePath: "assets/images/get2.jpg",
      imageSize: "300x300",
    ),
    Slide(
      desc: "Food delivery or pickup from local store, Explore shops that deliver near you.",
      title: "Deliver",
      imagePath: "assets/images/get_deliver.gif",
      imageSize: "300x300",
    ),
  ];
}