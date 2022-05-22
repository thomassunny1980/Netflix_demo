import 'package:flutter/material.dart';
import 'package:netflix_demo/presentation/downloads/download_screen.dart';
import 'package:netflix_demo/presentation/fastlaughs/fastlaughs.dart';
import 'package:netflix_demo/presentation/home/home_screen.dart';
import 'package:netflix_demo/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_demo/presentation/new_and_hot/new_and_hot_screen.dart';
import 'package:netflix_demo/presentation/search/search.dart';

class MainPageScreen extends StatelessWidget {
  MainPageScreen({Key? key}) : super(key: key);

  final _pages = [
    HomeScreen(),
    NewAndHotScreen(),
    FastLaughsScreen(),
    SearchScreen(),
    DownloadScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int newIndex, _) {
              return _pages[newIndex];
            }),
        bottomNavigationBar: BottomNavigationWidgets());
  }
}
