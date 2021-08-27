import 'package:flutter/material.dart';
import 'package:flutter_encyclopedic/views/common/circular_progress_indicator.dart';
import 'package:flutter_encyclopedic/views/common/my_app_bar.dart';

class NavigateMethods {
  void goToAppBar(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyAppBar()));
  }

  void goToCircularProgressIndicator(context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MyCircularProgressIndicator()));
  }
}
