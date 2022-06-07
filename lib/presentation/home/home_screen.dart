import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_demo/core/colors/colors.dart';
import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/home/number_card.dart';
import 'package:netflix_demo/presentation/home/widgets/home_screen_card.dart';

import 'package:netflix_demo/presentation/widgets/main_card_title.dart';
import 'package:netflix_demo/presentation/widgets/main_title.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: ((BuildContext context, value, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: ((notification) {
              final ScrollDirection direction = notification.direction;
              print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            }),
            child: Stack(
              children: [
                ListView(
                  children: [
                    const HomeScreenCard(),
                    const MainCardTitle(
                      title: "Released in the pas year",
                    ),
                    const MainCardTitle(
                      title: "Trending Now",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const MainTitle(
                              title: "Top 10 TV Show in india Today"),
                          kHeight,
                          LimitedBox(
                            maxHeight: 200,
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: List.generate(
                                    10,
                                    (index) => Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: NumberCard(
                                            index: index,
                                          ),
                                        ))),
                          ),
                        ],
                      ),
                    ),
                    const MainCardTitle(
                      title: "Tense Dramas",
                    ),
                    const MainCardTitle(
                      title: "South Indian Cinemas",
                    ),
                  ],
                ),
                scrollNotifier.value == true
                    ? Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: AnimatedContainer(
                          duration: const Duration(microseconds: 1000),
                          width: double.infinity,
                          height: 150.0,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    "https://www.edigitalagency.com.au/wp-content/uploads/Netflix-N-Symbol-logo-red-transparent-RGB-png.png",
                                    width: 100.0,
                                    height: 100.0,
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    size: 30.0,
                                    color: primaryColor,
                                  ),
                                  kWidth,
                                  Container(
                                    color: Colors.blue,
                                    height: 30,
                                    width: 30,
                                  ),
                                  kWidth,
                                ],
                              ),
                              kHeight,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  HomeScreenText(menuText: "TV Shows"),
                                  HomeScreenText(menuText: "Movies"),
                                  HomeScreenText(menuText: "Categories"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    : kHeight,
              ],
            ),
          );
        }),
      ),
    );
  }
}

class HomeScreenText extends StatelessWidget {
  final String menuText;
  const HomeScreenText({
    Key? key,
    required this.menuText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      menuText,
      style: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
