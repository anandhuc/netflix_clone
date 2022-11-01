import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_project/application/search/search_bloc.dart';
import 'package:netflix_project/core/colors.dart';
import 'package:netflix_project/core/constants.dart';
import 'package:netflix_project/domain/core/debounce/debounce.dart';
import 'package:netflix_project/presentation/search/widgets/search_idle.dart';
import 'package:netflix_project/presentation/search/widgets/search_results.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});
  final Debouncer _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<SearchBloc>(context).add(const Initialize());
      },
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: kGrey.withOpacity(0.4),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: kGrey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: kGrey,
                ),
                style: const TextStyle(color: kWhite),
                onChanged: (value) {
                  if (value.isEmpty) {
                    return;
                  }
                  _debouncer.run(() {
                    BlocProvider.of<SearchBloc>(context).add(
                      SearchEvent.searchMovie(
                        moieQuery: value,
                      ),
                    );
                  });
                },
              ),
              kHeight,
              Expanded(
                child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    return state.searchResultList.isEmpty
                        ? const SearchIdle()
                        : const SearchResults();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
