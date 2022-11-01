import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.icon,
    this.titleSize = 18,
    this.iconSize = 25,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final double titleSize;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhite,
          size: iconSize,
        ),
        Text(
          title,
          style: TextStyle(fontSize: titleSize),
        ),
      ],
    );
  }
}
