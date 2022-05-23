import 'package:flutter/material.dart';
import 'package:netflix_demo/core/colors/colors.dart';
import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/widgets/app_bar_widgets.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidgets(title: 'Downloads'),
      ),
      body: ListView(
        children: [
          Row(
            children: const [
              kWidth,
              Icon(
                Icons.settings,
                size: 25.0,
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
          ),
          Text('Introducing Downloads for you'),
          Text(
              'We will download a personalised selection of movies and shows for you, So there is always something to watch on your device'),
          MaterialButton(
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
          MaterialButton(
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
      ),
    );
  }
}
