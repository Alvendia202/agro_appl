import 'package:flutter/material.dart';

//fontStyle
const TextStyle kHeading = TextStyle(
  fontSize: 60,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const TextStyle kBodyText = TextStyle(
  fontSize: 15,
  color: Color.fromARGB(255, 63, 63, 63),
);

const TextStyle kFontText = TextStyle(
  fontSize: 16,
  color: Color.fromARGB(255, 0, 138, 62),
  fontWeight: FontWeight.bold,
);

const TextStyle kBoldText = TextStyle(
  fontSize: 16,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);


const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color.fromARGB(255, 255, 255, 255), Color.fromARGB(255, 12, 248, 158)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Colors.black;

const kAnimationDuration = Duration(milliseconds: 200);

const headingStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 16),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: kTextColor),
  );
}

Color primaryTextColor = const Color(0xFF414C6B);
Color secondaryTextColor = const Color(0xFFE4979E);
Color titleTextColor = Colors.white;
Color contentTextColor = Color.fromARGB(255, 2, 184, 84);
Color navigationColor = const Color(0xFF6751B5);
Color gradientStartColor = const Color(0xFF4051A9);
Color gradientEndColor = const Color(0xFF9354B9);
Color dotColor = Color.fromARGB(255, 107, 194, 140);
Color mainColor = Color.fromARGB(255, 56, 56, 56);