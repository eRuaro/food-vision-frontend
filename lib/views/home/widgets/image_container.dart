import 'package:flutter/material.dart';
import 'package:food_vision_frontend/models/color_palette.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorPalette.lightSlateGrey,
      ),
      child: child,
    );
  }
}
