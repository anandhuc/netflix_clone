import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors.dart';
import 'package:netflix_project/core/constants.dart';
import 'package:netflix_project/presentation/widget/custom_button.dart';

class BackgroundImageWidget extends StatelessWidget {
  const BackgroundImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(kmainImageUrl),
              fit: BoxFit.cover,
            ),
          ),
       
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(icon: Icons.add, title: 'My List'),
                playButton(),
                CustomButton(icon: Icons.info, title: 'Info'),
              ],
            ),
          ),
        )
      ],
    );
  }
}

TextButton playButton() {
  return TextButton.icon(
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kWhite)),
    onPressed: () {},
    icon: Icon(
      Icons.play_arrow,
      size: 25,
      color: kBlack,
    ),
    label: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Text(
        'Play',
        style: TextStyle(fontSize: 20, color: kBlack),
      ),
    ),
  );
}
