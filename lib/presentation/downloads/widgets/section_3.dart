import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors.dart';

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kBlueButton,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Setup',
                style: TextStyle(
                  color: kWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        MaterialButton(
          color: kWhiteButton,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'See what you can download',
              style: TextStyle(
                color: kBlack,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
