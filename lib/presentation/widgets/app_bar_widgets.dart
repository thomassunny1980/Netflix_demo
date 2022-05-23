import 'package:flutter/material.dart';
import 'package:netflix_demo/core/colors/colors.dart';
import 'package:netflix_demo/core/constants.dart';

class AppBarWidgets extends StatelessWidget {
  final String title;
  const AppBarWidgets({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          kWidth,
          Text(
            title,
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
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
    );
  }
}
