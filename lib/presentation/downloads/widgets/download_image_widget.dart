import 'dart:math';

import 'package:flutter/material.dart';

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({
    Key? key,
    required this.image,
    required this.margin,
    this.angle = 0,
    required this.size,
  }) : super(key: key);

  final String image;
  final EdgeInsetsGeometry margin;
  final double angle;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
