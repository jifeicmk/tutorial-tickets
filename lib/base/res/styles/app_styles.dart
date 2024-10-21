import 'package:flutter/material.dart';

Color primary = const Color(0xFF687DAF);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFF5F5F5);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);

  static TextStyle textStyle =
  TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: textColor);

  static TextStyle headingStyle0 =
  const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xFF687DAF));
  static TextStyle headingStyle1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headingStyle2 =
  TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headingStyle3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  static TextStyle headingStyle4 =
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);

}
