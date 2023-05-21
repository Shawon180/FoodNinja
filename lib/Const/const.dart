import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPrimaryColor = Color(0xff53E88B);
const kSubSubTitleColor = Color(0xff6C6C6C);
const kTitleColor = Color(0xff1A1A1A);
const kSubTitleColor = Color(0xff595959);
const kDarkWhite = Color(0xff6B6B6B);
const kWhite = Color(0xFFFFFFFF);
const kBorderColorTextField = Color(0xffE8E8E8);
const ratingBarColor = Color(0xFFFFB33E);
const kIconColor = Color(0xFF959595);

final kTextStyle = GoogleFonts.inter(
  color: kTitleColor,
);

InputDecoration kInputDecoration = const InputDecoration(
  hintStyle: TextStyle(color: kSubTitleColor),
  prefixIconColor: kBorderColorTextField,
  labelStyle: TextStyle(color: kBorderColorTextField),
  filled: true,
  fillColor: Colors.white70,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(6.0),
    ),
    borderSide: BorderSide(color: kBorderColorTextField, width: 1),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(6.0),
    ),
    borderSide: BorderSide(color: kBorderColorTextField, width: 1),
  ),
);
BoxDecoration kBoxdecortion= BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    gradient: const LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color(0xff15BE77),
        Color(0xff53E88B),

      ],
    )
);
ElevatedButton kButton=ElevatedButton(
  style:  ElevatedButton.styleFrom(
    primary: Colors.blue,
    onPrimary: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    minimumSize: const Size(88, 36),
  ),
  onPressed: () {},
  child: const Text('Continue'),
);