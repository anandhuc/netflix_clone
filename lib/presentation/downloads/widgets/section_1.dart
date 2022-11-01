import 'package:flutter/material.dart';

class Section1 extends StatelessWidget {
  const Section1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings, color: Colors.white),
        ),
        const Text(
          'Smart Downloads',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
