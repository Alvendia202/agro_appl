import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:agro_appl/screens/get_started/components/images_list.dart';
import 'package:agro_appl/screens/get_started/components/getstart_tile.dart';

import '../login/login_screen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  late List<Slide> slider;
  int slideIndex = 0;
  late PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    slider = getSlides();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    slideIndex = index;
                  });
                },
                children: slider.map((item) {
                  return SlideTile(
                    imagePath: item.imagePath,
                    title: item.title,
                    desc: item.desc,
                  );
                }).toList(),
              ),
            ),
            slideIndex != 2
                ? Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextButton(
                          onPressed: () {
                            controller.animateToPage(2,
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.linear);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.blue[50];
                              }
                              return null; // Defer to the widget's default.
                            }),
                          ),
                          child: const Text(
                            "SKIP",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              for (int i = 0; i < 3; i++)
                                i == slideIndex
                                    ? _buildPageIndicator(true)
                                    : _buildPageIndicator(false),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            print("this is slideIndex: $slideIndex");
                            controller.animateToPage(slideIndex + 1,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.linear);
                          },
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.blue[50];
                              }
                              return null; // Defer to the widget's default.
                            }),
                          ),
                          child: const Text(
                            "NEXT",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  )
                : InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Container(
                      height: kIsWeb ? 70 : 60, // Check if the platform is web
                      color: Color.fromARGB(255, 0, 117, 10),
                      alignment: Alignment.center,
                      child: const Text(
                        "Shop now",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
          ],
        ),
      
    );
  }
}