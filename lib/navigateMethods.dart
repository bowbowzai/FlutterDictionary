import 'package:flutter/material.dart';
import 'package:flutter_encyclopedic/views/common/circular_progress_indicator.dart';
import 'package:flutter_encyclopedic/views/common/clip_r_rect.dart';
import 'package:flutter_encyclopedic/views/common/my_app_bar.dart';
import 'package:flutter_encyclopedic/views/rarely/animated_switcher.dart';
import 'package:flutter_encyclopedic/views/rarely/drawer.dart';
import 'package:flutter_encyclopedic/views/sometime/card.dart';
import 'package:flutter_encyclopedic/views/sometime/dialogs.dart';
import 'package:flutter_encyclopedic/views/sometime/grid_view.dart';
import 'package:flutter_encyclopedic/views/sometime/snack_bar.dart';
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
                      'https://github.com/bowbowzai/FlutterDictionary/blob/main/lib/views/common/my_app_bar.dart',
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
                      'https://github.com/bowbowzai/FlutterDictionary/blob/main/lib/views/common/circular_progress_indicator.dart',
                  content: MyCircularProgressIndicator(),
                )));
  }

  void goToClipRRect(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Template(
                  title: 'ClipRRect',
                  decription:
                      'This is a widget used to clip a round import. You can specify the radius of the corner in the borderRadius property of this widget. while you can not resize it in an image with rounded corners without this widget container widget decoration properties.',
                  url:
                      'https://github.com/bowbowzai/FlutterDictionary/blob/main/lib/views/common/clip_r_rect.dart',
                  content: MyClipRRect(),
                )));
  }

  void goToCard(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Template(
                  title: 'Card',
                  decription:
                      'A card is a sheet of Material used to represent some related information, for example an album, a geographical location, a meal, contact details, etc.',
                  url:
                      'https://github.com/bowbowzai/FlutterDictionary/blob/main/lib/views/sometime/card.dart',
                  content: MyCard(),
                )));
  }

  void goToAlertDialog(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Template(
                  title: 'AlertDialog',
                  decription:
                      'An alert dialog informs the user about situations that require acknowledgement. An alert dialog has an optional title and an optional list of actions. The title is displayed above the content and the actions are displayed below the content.',
                  url:
                      'https://github.com/bowbowzai/FlutterDictionary/blob/main/lib/views/sometime/dialogs.dart',
                  content: MyAlertDialog(),
                )));
  }

  void goToSnackbar(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Template(
                  title: 'Snackbar',
                  decription:
                      'It can be useful to briefly inform your users when certain actions take place. For example, when a user swipes away a message in a list, you might want to inform them that the message has been deleted. You might even want to give them an option to undo the action.',
                  url:
                      'https://github.com/bowbowzai/FlutterDictionary/blob/main/lib/views/sometime/snack_bar.dart',
                  content: MySnackBar(),
                )));
  }

  void goToGridView(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Template(
                  title: 'GridView',
                  decription:
                      'GridView is a widget in Flutter that displays the items in a 2-D array (two-dimensional rows and columns). As the name suggests, it will be used when we want to show items in a Grid. We can select the desired item from the grid list by tapping on them.',
                  url:
                      'https://github.com/bowbowzai/FlutterDictionary/blob/main/lib/views/sometime/grid_view.dart',
                  content: MyGridView(),
                )));
  }

  void goToAnimatedSwitcher(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Template(
                  title: 'AnimatedSwitcher',
                  decription:
                      'A widget that by default does a cross-fade between a new widget and the widget previously set on the AnimatedSwitcher as a child.',
                  url:
                      'https://github.com/bowbowzai/FlutterDictionary/blob/main/lib/views/rarely/animated_switcher.dart',
                  content: MyAnimatedSwitcher(),
                )));
  }

  void goToDrawer(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Template(
                  title: 'Drawer',
                  decription:
                      'Drawers are typically used with the Scaffold.drawer property. The child of the drawer is usually a ListView whose first child is a DrawerHeader that displays status information about the current user. The remaining drawer children are often constructed with ListTiles, often concluding with an AboutListTile.',
                  url:
                      'https://github.com/bowbowzai/FlutterDictionary/blob/main/lib/views/rarely/drawer.dart',
                  content: MyDrawer(),
                )));
  }
}
