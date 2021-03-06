import 'package:dating_ui/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class ProfileInfoBigCard extends StatelessWidget {
  final String firstTest, secondText;
  final Widget icon;

  const ProfileInfoBigCard(
      {Key key,
      @required this.firstTest,
      @required this.secondText,
      @required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, top: 30, right: 8,bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: icon),
            Text(
              firstTest,
              style: titleStyle,
            ),
            Text(
              secondText,
              style: subTitleStyle,
            ),
          ],
        ),
      ),
    );
  }
}
