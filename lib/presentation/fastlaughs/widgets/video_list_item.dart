import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_demo/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: const Icon(
                    Icons.volume_off_rounded,
                    color: primaryColor,
                    size: 30,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/sKCr78MXSLixwmZ8DyJLrpMsd15.jpg"),
                      ),
                    ),
                    VideoActionWidget(
                        icons: Icons.emoji_emotions, iconText: "LOL"),
                    VideoActionWidget(icons: Icons.add, iconText: "My List"),
                    VideoActionWidget(icons: Icons.share, iconText: "Share"),
                    VideoActionWidget(
                        icons: Icons.play_arrow, iconText: "Play"),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icons;
  final String iconText;
  const VideoActionWidget({
    Key? key,
    required this.icons,
    required this.iconText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Icon(
            icons,
            size: 30.0,
            color: primaryColor,
          ),
          Text(
            iconText,
            style: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
