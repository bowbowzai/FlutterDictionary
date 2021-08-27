
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar>
    with SingleTickerProviderStateMixin {
  bool _infoVisible = false;
  bool _isShowInfo = false;

  launchUrl() async {
    const _url = 'https://www.facebook.com/';
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Tooltip(
            message: 'Show code',
            child: IconButton(
              icon: Icon(Icons.remove_red_eye_outlined),
              onPressed: () {
                launchUrl();
              },
              iconSize: 30,
            ),
          ),
          Tooltip(
            message: 'Info',
            child: IconButton(
              icon: Icon(Icons.message),
              onPressed: () {
                setState(() {
                  _infoVisible = !_infoVisible;
                  _isShowInfo = !_isShowInfo;
                });
              },
              iconSize: 30,
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          AnimatedContainer(
            height: _isShowInfo ? MediaQuery.of(context).size.height * 0.25 : 0,
            duration: Duration(milliseconds: 280),
            color: Colors.transparent,
            child: Column(
              children: [
                Flexible(
                    child: Text(
                  'App Bar',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 10,
                ),
                Flexible(
                  flex: 2,
                  child: ListView(physics: BouncingScrollPhysics(), children: [
                    Text(
                      'App bars are typically used in the Scaffold.appBar property, which places the app bar as a fixed-height widget at the top of the screen. For a scrollable app bar, see SliverAppBar, which embeds an AppBar in a sliver for use in a CustomScrollView',
                      style: TextStyle(fontSize: 20),
                    ),
                  ]),
                )
              ],
            ),
          ),
          Expanded(
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.deepPurpleAccent,
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.format_align_justify_rounded)),
                title: Text('AppBar'),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                ],
              ),
              body: Container(),
            ),
          ),
        ]),
      ),
    );
  }
}
