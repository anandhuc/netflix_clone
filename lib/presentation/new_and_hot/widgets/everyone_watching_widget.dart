import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors.dart';
import 'package:netflix_project/core/constants.dart';
import 'package:netflix_project/presentation/new_and_hot/widgets/video_widget.dart';
import 'package:netflix_project/presentation/widget/custom_button.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  final String movieName;
  final String posterPath;
  final String description;
  const EveryoneWatchingWidget({
    Key? key,
    required this.movieName,
    required this.posterPath,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight,
          Text(
            movieName,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight,
          Text(
            description,
            style: const TextStyle(color: kGrey),
          ),
          SizedBox(height: 40),
          VideoWidget(
            image: posterPath,
          ),
          kHeight,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              CustomButton(
                title: 'Share',
                icon: Icons.share,
                titleSize: 16,
                iconSize: 25,
              ),
              kWidth,
              CustomButton(
                title: 'My List',
                icon: Icons.add,
                titleSize: 16,
                iconSize: 25,
              ),
              kWidth,
              CustomButton(
                title: 'Play',
                icon: Icons.play_arrow,
                titleSize: 16,
                iconSize: 25,
              ),
              kWidth,
            ],
          ),
        ],
      ),
    );
  }
}
