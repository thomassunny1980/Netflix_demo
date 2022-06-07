import 'package:flutter/material.dart';
import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/widgets/main_card.dart';
import 'package:netflix_demo/presentation/widgets/main_title.dart';

class MainCardTitle extends StatelessWidget {
  final String title;
  const MainCardTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTitle(title: title),
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
    );
  }
}
