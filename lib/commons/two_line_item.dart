import 'package:dating_ui/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class TwoLinItem extends StatelessWidget {
  final String firstText, secondText;

  const TwoLinItem({Key key, this.firstText, this.secondText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          firstText,
          style: titleStyle,
        ),
        Text(
          secondText,
          style: titleStyle,
        ),
      ],
    );
  }
}
