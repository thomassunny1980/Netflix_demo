import 'package:flutter/material.dart';
import 'package:netflix_demo/presentation/widgets/app_bar_widgets.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(child: AppBarWidgets(title: 'Hot&New')));
  }
}
