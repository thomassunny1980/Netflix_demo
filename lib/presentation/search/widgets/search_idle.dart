import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_demo/core/colors/colors.dart';
import 'package:netflix_demo/core/constants.dart';
import 'package:netflix_demo/presentation/search/widgets/title.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/wtbRUVxQVvU6QIJH1oGLDThJLib.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchPageTitle(title: "Top Searches"),
        kHeight,
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) => const TopSearchItems(),
              separatorBuilder: (context, index) => kHeight,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItems extends StatelessWidget {
  const TopSearchItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageScreenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: imageScreenWidth * 0.35,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: const DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Movies Name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (() {
            print("Clicked Play Button");
          }),
          child: const Icon(
            CupertinoIcons.play_circle,
            size: 50.0,
            color: primaryColor,
          ),
        )
      ],
    );
  }
}
