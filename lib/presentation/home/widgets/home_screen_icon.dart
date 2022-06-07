import 'package:flutter/material.dart';
import 'package:netflix_demo/core/colors/colors.dart';

class HomeScreenIcons extends StatelessWidget {
  const HomeScreenIcons({
    Key? key,
    required this.homeIcons,
    required this.iconText,
  }) : super(key: key);
  final IconData homeIcons;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          homeIcons,
          size: 30.0,
          color: primaryColor,
        ),
        Text(
          iconText,
          style: const TextStyle(
            color: primaryColor,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
