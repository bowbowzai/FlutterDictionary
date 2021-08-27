import 'package:flutter/material.dart';
import 'package:flutter_encyclopedic/views/common/circular_progress_indicator.dart';
import 'package:flutter_encyclopedic/views/common/my_app_bar.dart';
import 'package:flutter_encyclopedic/views/template.dart';

class NavigateMethods {
  void goToAppBar(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Template(
                  content: MyAppBar(),
                  title: 'AppBar',
                  decription:
                      'App bars are typically used in the Scaffold.appBar property, which places the app bar as a fixed-height widget at the top of the screen. For a scrollable app bar, see SliverAppBar, which embeds an AppBar in a sliver for use in a CustomScrollView',
                  url:
                      'https://github.com/bowbowzai/FlutterDictionary/blob/main/lib/examples/common/app_bar_examples.dart',
                )));
  }

  void goToCircularProgressIndicator(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Template(
                  title: 'CircularProgressIndicator',
                  decription:
                      'A CircularProgressIndicator is a circular progress bar that spins to indicate that the application is busy or on hold or it is a widget that shows progress along a circle.',
                  url:
                      'https://github.com/bowbowzai/FlutterDictionary/blob/main/lib/examples/common/app_bar_examples.dart',
                  content: MyCircularProgressIndicator(),
                )));
  }
}
