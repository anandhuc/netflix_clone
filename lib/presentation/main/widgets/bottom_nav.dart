import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors.dart';

ValueNotifier<int> currentIndexNotifier = ValueNotifier(0);

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  final List<BottomNavigationBarItem> bottomNavItem = const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.collections), label: 'New & Hot'),
    BottomNavigationBarItem(
        icon: Icon(Icons.emoji_emotions), label: 'Fast Laugh'),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
    BottomNavigationBarItem(icon: Icon(Icons.download), label: 'Downloads'),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: currentIndexNotifier,
        builder: (BuildContext context, int value, Widget? _) {
          return BottomNavigationBar(
            items: bottomNavItem,
            backgroundColor: kBackgroundColor,
            selectedItemColor: kWhite,
            unselectedItemColor: kGrey,
            type: BottomNavigationBarType.fixed,
            currentIndex: value,
            onTap: (newIndex) {
              currentIndexNotifier.value = newIndex;
            },
          );
        });
  }
}
