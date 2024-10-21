import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens/all_tickets.dart';
import '../res/styles/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key, required this.bigText, required this.smallText});
  final String bigText;
  final String smallText;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        bigText,
        style: AppStyles.headingStyle2,
      ),
      InkWell(
        onTap: () => Navigator.pushNamed(context, "/all_tickets"),
        child: Text(
          smallText,
          style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
        ),
      )
    ]);
  }
}
