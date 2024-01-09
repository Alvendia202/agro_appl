import 'package:flutter/material.dart';

import '../../../../theme.dart';

class UserType extends StatefulWidget {
  @override
  _UserTypeState createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {
  String? _chosenValue; // Make it nullable

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButton<String>(
        value: _chosenValue,
        underline: SizedBox(), // This removes the underline
        style: kBodyText,
        items: <String>[
          'Seller',
          'Buyer',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                Text(value),
              ],
            ),
          );
        }).toList(),
        hint: Text(
          "Please select user type",
          style: kBodyText,
        ),
        onChanged: (String? value) {
          setState(() {
            _chosenValue = value;
          });
        },
      ),
    );
  }
}