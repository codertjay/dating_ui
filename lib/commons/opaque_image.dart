import 'package:dating_ui/styleguide/colors.dart';
import 'package:flutter/material.dart';

class OpaqueImage extends StatelessWidget {
  final String imageUrl;

  const OpaqueImage({Key key, @required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imageUrl,
          width: double.maxFinite,
          height: double.maxFinite,
          fit: BoxFit.fill,
        ),
        Container(
          color: primaryColorOpacity.withOpacity(0.8),
        )
      ],
    );
  }
}
