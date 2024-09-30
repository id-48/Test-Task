import 'package:flutter/material.dart';

class FindColors {
  static Color checkColor(String val) {
    Color _color;

    switch (val.toUpperCase()) {
      case 'RED':
        _color = Colors.red;
        break;
      case 'YELLOW':
        _color = Colors.amber;
        break;
      case 'GREEN':
        _color = Colors.green;
        break;
      case 'PURPLE':
        _color = Colors.purple;
        break;
      case 'BLUE':
        _color = Colors.blue;
        break;
      default:
        _color = Colors.black;
        break;
    }
    return _color;
  }
}


class AppColors {
  AppColors._();

  static const Color spaceLight = Color(0xff2b3a67);
  static const Color orangeWeb = Color(0xFFf59400);
  static const Color white = Color(0xFFf5f5f5);
  static const Color greyColor = Color(0xffaeaeae);
  static const Color greyColor2 = Color(0xffE8E8E8);
  static const Color lightGrey = Color(0xff928a8a);
  static const Color burgundy = Color(0xFF880d1e);
  static const Color indyBlue = Color(0xFF414361);
  static const Color spaceCadet = Color(0xFF2a2d43);
}

const Color primaryColor = Color(0xFFFF5032);
const Color kColorBlack = Colors.black;
const Color kColorWhite = Colors.white;
const Color kColorGrey = Colors.grey;