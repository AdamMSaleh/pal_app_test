import 'package:flutter/material.dart';

class AppColor {
  // * Convert Color from Hex to type Flutter 0xFFdddddd
  static Color _colorFromHex(String hexColor) {
    final color = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$color', radix: 16));
  }

//* bacground logo
  static Color blue = _colorFromHex('#59acf0');
}
