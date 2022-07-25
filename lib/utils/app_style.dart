import 'package:flutter/material.dart';

Color primary = const Color(0xFF304543);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = Colors.white;
  static Color cardColor = const Color(0xFF415957).withOpacity(0.3);
  static Color smallCardColor = const Color(0xFFAFA767);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 =
      TextStyle(fontSize: 18, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 =
      TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w500);
}
