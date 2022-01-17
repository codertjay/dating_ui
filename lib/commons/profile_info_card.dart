import 'package:dating_ui/commons/two_line_item.dart';
import 'package:dating_ui/styleguide/colors.dart';
import 'package:flutter/material.dart';

class ProfileInfoCard extends StatelessWidget {
  final String firstText, secondText;
  final Widget icon;
  bool hasIcon;

  ProfileInfoCard(
      {Key key,
      this.firstText,
      this.secondText,
      this.icon,
      this.hasIcon = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 12,
      child: hasIcon
          ? icon
          : TwoLinItem(
              firstText: firstText,
              secondText: secondText,
            ),
    ));
  }
}
