// part of uidata;

// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:hbb/src/utils/uidata/color.dart';

class UIDataTextStyles {
  // < ------------------------------------- Define Text Styling Here ----------------------->
  static const kViewAllStyle = TextStyle(
    fontSize: 25,
    fontFamily: 'Futurahi',
    fontWeight: FontWeight.w900,
    color: Color(0xff839ba3),
  );
  static const HeadingStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: 'Roboto',
    color: Colors.black,
    decoration: TextDecoration.none,
    fontSize: 45,
  );

  static const BottomNavHoverStyle =
      TextStyle(color: UIDataColors.commonColor, fontWeight: FontWeight.w600);
  static const BottomNavStyle =
      TextStyle(color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 14);
}
