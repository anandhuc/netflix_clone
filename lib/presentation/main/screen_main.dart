import 'package:flutter/material.dart';
import 'package:netflix_project/presentation/downloads/screen_download.dart';
import 'package:netflix_project/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix_project/presentation/home/screen_home.dart';
import 'package:netflix_project/presentation/main/widgets/bottom_nav.dart';
import 'package:netflix_project/presentation/new_and_hot/screen_new_hot.dart';
import 'package:netflix_project/presentation/search/screen_search.dart';

class ScreenMain extends StatelessWidget {
  ScreenMain({super.key});
  final List<Widget> _pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownload(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: currentIndexNotifier,
        builder: (BuildContext context, int value, Widget? _) {
          return _pages[value];
        },
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
