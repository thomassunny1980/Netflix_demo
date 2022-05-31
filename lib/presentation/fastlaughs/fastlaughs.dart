import 'package:flutter/material.dart';
import 'package:netflix_demo/presentation/fastlaughs/widgets/video_list_item.dart';

class FastLaughsScreen extends StatelessWidget {
  const FastLaughsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            10,
            (index) => VideoListItem(index: index),
          ),
        ),
      ),
    );
  }
}
