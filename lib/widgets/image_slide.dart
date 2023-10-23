import 'package:agro_appl/list/images_list.dart';
import 'package:flutter/material.dart';

class SlideItem extends StatelessWidget {
  final int index;
  const SlideItem(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(getSlides()[index].imagePath),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          getSlides()[index].title,
          style: TextStyle(
            fontSize: 22,
            color: Theme.of(context).primaryColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          getSlides()[index].desc,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}