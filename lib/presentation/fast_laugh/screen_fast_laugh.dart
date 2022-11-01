import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_project/application/fastlaugh/fast_laugh_bloc.dart';
import 'package:netflix_project/core/constant_strings.dart';
import 'package:netflix_project/presentation/fast_laugh/widgets/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastLaughBloc, FastLaughState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              );
            } else if (state.isError) {
              return const Center(
                child: Text('Some error occured'),
              );
            } else if (state.videosList.isEmpty) {
              return const Center(
                child: Text('The list is empty'),
              );
            } else {
              return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                  state.videosList.length,
                  (index) {
                    final movieData = state.videosList[index];
                    return VideoListItemInheritedWidget(
                      widget: VideoListItem(
                        key: Key(index.toString()),
                        index: index,
                      ),
                      movieData: movieData,
                    );
                  },
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
