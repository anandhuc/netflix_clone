import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    Key? key,
    required this.size,
    required this.index,
    required this.posterPath,
  }) : super(key: key);

  final Size size;
  final int index;
  final String posterPath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 40, right: 5),
          width: size.width * 0.35,
          height: size.width * 0.55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: NetworkImage(posterPath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            bottom: -20, 
          left: 2,
          
          child: BorderedText(
            strokeColor: kWhite,
            strokeWidth: 3.0,
            child: Text(
              "$index",
              style: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 130,
                fontWeight: FontWeight.w900,
                color: kBlack,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
