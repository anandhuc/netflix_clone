import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_project/application/downloads/downloads_bloc.dart';
import 'package:netflix_project/application/fastlaugh/fast_laugh_bloc.dart';
import 'package:netflix_project/application/home/home_bloc.dart';
import 'package:netflix_project/application/new_and_hot/new_and_hot_bloc.dart';
import 'package:netflix_project/application/search/search_bloc.dart';
import 'package:netflix_project/core/colors.dart';
import 'package:netflix_project/domain/core/dependency_injection/injectable.dart';
import 'package:netflix_project/presentation/main/screen_main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<DownloadsBloc>()),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(create: (context) => getIt<FastLaughBloc>()),
        BlocProvider(create: (context) => getIt<HomeBloc>()),
        BlocProvider(create: (context) => getIt<NewAndHotBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        showSemanticsDebugger: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: kWhite),
            bodyText2: TextStyle(color: kWhite),
            headline6: TextStyle(color: kWhite),
            caption: TextStyle(color: kWhite),
            subtitle1: TextStyle(color: kWhite),
          ),
        ),
        home: ScreenMain(),
      ),
    );
  }
}
