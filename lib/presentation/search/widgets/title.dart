import 'package:flutter/material.dart';

class SearchPageTitle extends StatelessWidget {
  final String title;
  const SearchPageTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    );
  }
}
