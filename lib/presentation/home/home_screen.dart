import 'package:flutter/material.dart';
import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/widgets/main_card.dart';
import 'package:netflix_demo/presentation/widgets/main_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainTitle(title: "Released in the pas year"),
              kHeight,
              LimitedBox(
                maxHeight: 200,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                        10,
                        (index) => const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: MainCardHomePage(),
                            ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
