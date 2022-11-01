import 'package:flutter/material.dart';
import 'package:netflix_project/presentation/downloads/widgets/section_2.dart';
import 'package:netflix_project/presentation/downloads/widgets/section_3.dart';
import 'package:netflix_project/presentation/downloads/widgets/section_1.dart';
import 'package:netflix_project/presentation/widget/common_appbar.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});

  final List _widgetList = [
    const Section1(),
    Section2(),
    const Section3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SafeArea(child: CommonAppbar(title: 'Downloads')),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(12),
          itemBuilder: (context, index) => _widgetList[index],
          separatorBuilder: (context, index) => const SizedBox(height: 20),
          itemCount: _widgetList.length,
        ));
  }
}
