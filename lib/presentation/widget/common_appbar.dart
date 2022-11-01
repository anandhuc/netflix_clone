import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors.dart';

class CommonAppbar extends StatelessWidget {
  const CommonAppbar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.cast,
                  size: 30,
                  color: kWhite,
                ),
              ),
             Container(
                                        width: 30,
                                        height: 30,
                                        margin:
                                          const EdgeInsets.only(right: 10),
                                        child: Image.asset("assets/images/Netflix-avatar.png"),  
              )
            ],
          )
        ],
      ),
    );
  }
}
