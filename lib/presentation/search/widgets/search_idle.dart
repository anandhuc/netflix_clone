import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_project/application/search/search_bloc.dart';
import 'package:netflix_project/core/colors.dart';
import 'package:netflix_project/core/constant_strings.dart';
import 'package:netflix_project/core/constants.dart';
import 'package:netflix_project/presentation/widget/main_title.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(
          title: 'Top Searchs',
        ),
        kHeight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Something erroe occured while getting data'),
                );
              } else if (state.idealList.isEmpty) {
                return const Center(
                  child: Text('List is Empty'),
                );
              }
              return ListView.separated(
                itemBuilder: (context, index) {
                  final movie = state.idealList[index];
                  return TopSearchItemTile(
                      title: movie.title ?? 'No Title Provide',
                      image: '$imageAppendurl${movie.posterpath}');
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 18),
                itemCount: state.idealList.length,
              );
            },
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({
    super.key,
    required this.title,
    required this.image,
  });
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          height: 75,
          width: size.width * 0.35,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        const CircleAvatar(
          backgroundColor: kWhite,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kBlack,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kWhite,
            ),
          ),
        )
      ],
    );
  }
}
