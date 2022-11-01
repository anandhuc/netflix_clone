import 'package:flutter/material.dart';
import 'package:netflix_project/core/constants.dart';
import 'package:netflix_project/presentation/home/widgets/number_card.dart';
import 'package:netflix_project/presentation/widget/main_title.dart';

class TopTitleCard extends StatelessWidget {
  const TopTitleCard(
      {super.key, required this.title, required this.posterPathList});
  final String title;
  final List<String> posterPathList;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        MainTitle(title: title),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: Padding(
            padding: const EdgeInsets.only(left:8.0), 
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                posterPathList.length,
                (index) => NumberCard(
                  index: index + 1,
                  size: size,
                  posterPath: posterPathList[index],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
