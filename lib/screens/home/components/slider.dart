import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SlideImages extends StatefulWidget {
  final List<String> imgList = [
    "assets/images/sale.jpg",
    "assets/images/sale1.jpg",
  ];

  @override
  _SlideImage createState() => _SlideImage();
}

class _SlideImage extends State<SlideImages> {
  int _currentIndex = 0;
  final CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            CarouselSlider.builder(
              carouselController: controller,
              itemCount: widget.imgList.length,
              itemBuilder: (context, index, realIndex) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Image.asset(
                      widget.imgList[index],
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                viewportFraction: 1,
                height: MediaQuery.of(context).size.height * 0.25,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 5.0,
          left: 0.0,
          right: 0.0,
          child: buildIndicator(),
        ),
      ],
    );
  }

  Widget buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.imgList.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () {
            controller.jumpToPage(entry.key);
            setState(() {
              _currentIndex = entry.key;
            });
          },
          child: Container(
            height: 3,
            width: 14,
            margin: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: _currentIndex == entry.key
                  ? Color.fromARGB(255, 88, 255, 152)
                  : Color.fromARGB(255, 249, 255, 248),
            ),
          ),
        );
      }).toList(),
    );
  }
}