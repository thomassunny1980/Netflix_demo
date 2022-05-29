import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_demo/core/colors/colors.dart';
import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/widgets/app_bar_widgets.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({Key? key}) : super(key: key);

  final List _widgetsList = [
    const _smartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidgets(title: 'Downloads'),
        ),
        body: ListView.separated(
            padding: const EdgeInsets.all(15.0),
            itemBuilder: ((context, index) => _widgetsList[index]),
            separatorBuilder: ((context, index) => const SizedBox(
                  height: 30.0,
                )),
            itemCount: _widgetsList.length));
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);
  final imageList = [
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/mcIYHZYwUbvhvUt8Lb5nENJ7AlX.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/sKCr78MXSLixwmZ8DyJLrpMsd15.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/lJA2RCMfsWoskqlQhXPSLFQGXEJ.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        const Text(
          "We will download a personalised selection of\n movies and shows for you, So there's\n always something to watch on\n your device",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: secondaryColor,
          ),
        ),
        kHeight,
        Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: size.width * 0.31,
                backgroundColor: secondaryColor.withOpacity(0.5),
              ),
            ),
            DownloadImageWidget(
                adjustSize: 25.0,
                size: Size(size.width * 0.33, size.width * 0.43),
                imageList: imageList[0],
                margin: const EdgeInsets.only(right: 140.0, bottom: 22.0),
                angle: -20.0),
            DownloadImageWidget(
                adjustSize: 25.0,
                size: Size(size.width * 0.33, size.width * 0.43),
                imageList: imageList[1],
                margin: const EdgeInsets.only(left: 140.0, bottom: 22.0),
                angle: 20.0),
            DownloadImageWidget(
                adjustSize: 10.0,
                size: Size(size.width * 0.35, size.width * 0.5),
                imageList: imageList[2],
                margin: const EdgeInsets.only(
                  left: 0,
                  top: 22.0,
                ),
                angle: 0.0),
          ],
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            padding: EdgeInsets.all(10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            onPressed: () {},
            color: kButtonColorBlue,
            child: const Text(
              'Set up',
              style: TextStyle(
                color: primaryColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          padding: EdgeInsets.all(10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          onPressed: () {},
          color: kButtonColorWhite,
          child: const Text(
            'See what you can download',
            style: TextStyle(
              color: kblackColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class _smartDownloads extends StatelessWidget {
  const _smartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          size: 30.0,
          color: primaryColor,
        ),
        kWidth,
        Text(
          'Smart Downloads',
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({
    Key? key,
    required this.imageList,
    required this.margin,
    required this.angle,
    required this.size,
    required this.adjustSize,
  }) : super(key: key);

  final String imageList;
  final EdgeInsets margin;
  final double angle;
  final Size size;
  final double adjustSize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: adjustSize,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: ClipRRect(
          child: Container(
            margin: margin,
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageList),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
