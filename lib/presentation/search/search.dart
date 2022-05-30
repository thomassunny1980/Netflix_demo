import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_demo/core/colors/colors.dart';
import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/search/widgets/search_idle.dart';
import 'package:netflix_demo/presentation/search/widgets/search_resut.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: secondaryColor.withOpacity(0.3),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: secondaryColor,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: secondaryColor,
                ),
                style: const TextStyle(
                  color: primaryColor,
                ),
              ),
              kHeight,
              // const Expanded(
              //   child: SearchIdleWidget(),
              const Expanded(
                child: SearchResult(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
