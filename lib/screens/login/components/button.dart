import 'package:flutter/material.dart';

import '../../../theme.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  final String buttonText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: contentTextColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: kBoldText,
            ),
          ),
        ),
      ),
    );
  }
}
