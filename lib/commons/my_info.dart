import 'package:dating_ui/commons/rounded_image.dart';
import 'package:dating_ui/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  // const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        RoundedImage(
          imagePath: 'assets/images/codertjay.jpg',
          size: Size.fromWidth(120.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Afenikhena Favour',
              style: whiteNameTextStyle,
            ),
            Text(
              ', 24',
              style: whiteNameTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              size: 20.0,
              color: Colors.white,
            ),
            Text(
              " 34 Kilometers",
              style: whiteSubHeadingTextStyle,
            )
          ],
        )
      ],
    ));
  }
}
