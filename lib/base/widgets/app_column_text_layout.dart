import 'package:flutter/cupertino.dart';
import 'package:tickets/base/widgets/text_style_third.dart';

class AppColoumTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  const AppColoumTextLayout({super.key, required this.topText, required this.bottomText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextStyleThird(text: topText),
        const SizedBox(
          height: 5,
        ),
        TextStyleThird(text: bottomText)
      ],
    );
  }
}
