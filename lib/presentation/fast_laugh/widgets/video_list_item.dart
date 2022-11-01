import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_project/application/fastlaugh/fast_laugh_bloc.dart';
import 'package:netflix_project/core/colors.dart';
import 'package:netflix_project/core/constant_strings.dart';
import 'package:netflix_project/core/constants.dart';
import 'package:netflix_project/domain/downloads/models/downloads.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;

  const VideoListItemInheritedWidget({
    Key? key,
    required this.widget,
    required this.movieData,
  }) : super(key: key, child: widget);

  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoListItem extends StatelessWidget {
  final int index;
  // final String imageUrl;
  const VideoListItem({
    super.key,
    required this.index,
    //required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final posterPath =
        VideoListItemInheritedWidget.of(context)?.movieData.posterpath;
    final videoUrl = dummyVideoUrls[index % dummyVideoUrls.length];
    return Stack(
      children: [
        FastLaughVideoPlayer(
            onStateChanged: (bool isPlaying) {}, videoUrl: videoUrl),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: kBlack.withOpacity(0.8),
                  radius: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                      color: kWhite,
                      size: 30,
                    ),
                  ),
                ),
                //Right Side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 23,
                      backgroundImage: posterPath == null
                          ? null
                          : NetworkImage('$imageAppendurl$posterPath'),
                    ),
                    kHeight,
                    ValueListenableBuilder(
                      valueListenable: likedVideosListNotifier,
                      builder: (BuildContext context, Set<int> newLikedListIds,
                          Widget? _) {
                        final _index = index;
                        if (newLikedListIds.contains(_index)) {
                          return GestureDetector(
                            onTap: () {
                              // BlocProvider.of<FastLaughBloc>(context)
                              //     .add(UnLikeVideos(id: _index));
                              likedVideosListNotifier.value.remove(_index);
                              likedVideosListNotifier.notifyListeners();
                            },
                            child: const VideoActions(
                              icon: Icons.favorite_outline,
                              title: 'Liked',
                            ),
                          );
                        } else {
                          return GestureDetector(
                            onTap: () {
                              // BlocProvider.of<FastLaughBloc>(context)
                              //     .add(LikeVideos(id: _index));
                              likedVideosListNotifier.value.add(_index);
                              likedVideosListNotifier.notifyListeners();
                            },
                            child: const VideoActions(
                              icon: Icons.emoji_emotions,
                              title: 'LOL',
                            ),
                          );
                        }
                      },
                    ),
                    const VideoActions(icon: Icons.add, title: 'My List'),
                    GestureDetector(
                      onTap: () {
                        final movieName =
                            VideoListItemInheritedWidget.of(context)
                                ?.movieData
                                .title;
                        if (movieName != null) {
                          Share.share(movieName);
                        }
                      },
                      child:
                          const VideoActions(icon: Icons.share, title: 'Share'),
                    ),
                    const VideoActions(icon: Icons.play_arrow, title: 'Play')
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActions extends StatelessWidget {
  const VideoActions({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 7),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhite,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}

class FastLaughVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  const FastLaughVideoPlayer({
    super.key,
    required this.onStateChanged,
    required this.videoUrl,
  });

  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayerState();
}

class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _videoPlayerController.initialize().then((value) {
      setState(() {
        _videoPlayerController.play();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            )
          : const Center(child: CircularProgressIndicator(strokeWidth: 2)),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
