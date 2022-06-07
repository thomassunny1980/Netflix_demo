import 'package:flutter/material.dart';
import 'package:netflix_demo/core/colors/colors.dart';
import 'package:bordered_text/bordered_text.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 35,
              height: 250,
            ),
            Container(
              width: 140,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.themoviedb.org/t/p/w130_and_h195_bestv2/oPkm7vwYCa1McT8jEIFWLj393s4.jpg"),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 7,
          bottom: -21,
          child: BorderedText(
            strokeWidth: 5.0,
            strokeColor: primaryColor,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                fontSize: 100.0,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
