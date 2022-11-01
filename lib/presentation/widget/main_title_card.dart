import 'package:flutter/material.dart';
import 'package:netflix_project/core/constants.dart';
import 'package:netflix_project/presentation/widget/main_card.dart';
import 'package:netflix_project/presentation/widget/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    Key? key,
    required this.title,
    required this.posterPathlist,
  }) : super(key: key);

  final String title;
  final List<String> posterPathlist;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          kHeight,
          MainTitle(title: title),
          kHeight,
          LimitedBox(
            maxHeight: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                posterPathlist.length,
                (index) => MainCard(
                  imageUrl: posterPathlist[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
