import 'package:flutter/material.dart';
import 'package:netflix_demo/core/colors/colors.dart';
import 'package:netflix_demo/presentation/home/widgets/home_screen_icon.dart';

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: ((bounds) => const LinearGradient(
                  colors: [primaryColor, Colors.black54],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topLeft)
              .createShader(bounds)),
          child: Container(
            width: double.infinity,
            height: 550,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    backgroundColor.withOpacity(0.1), BlendMode.lighten),
                fit: BoxFit.cover,
                image: const NetworkImage(
                  "https://www.themoviedb.org/t/p/original/sBp9UD2CdpkSo9E0uDTPUq4aelF.jpg",
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const HomeScreenIcons(
                homeIcons: Icons.add,
                iconText: "My List",
              ),
              Container(
                width: 100.0,
                height: 45.0,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(5.0)),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow,
                    color: backgroundColor,
                    size: 35.0,
                  ),
                  label: const Text(
                    "Play",
                    style: TextStyle(
                      color: backgroundColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
              const HomeScreenIcons(
                homeIcons: Icons.info_outline,
                iconText: "Info",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
