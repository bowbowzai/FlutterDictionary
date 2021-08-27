import 'package:flutter/material.dart';
import 'package:flutter_encyclopedic/views/common/app_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class Template extends StatefulWidget {
  final String url;
  final String title;
  final String decription;
  final Widget content;
  const Template(
      {Key? key,
      required this.url,
      required this.title,
      required this.decription,
      required this.content})
      : super(key: key);

  @override
  _TemplateState createState() => _TemplateState();
}

class _TemplateState extends State<Template>
    with SingleTickerProviderStateMixin {
  bool _infoVisible = false;
  bool _isShowInfo = false;

  launchUrl() async {
    final _url = widget.url;
    await canLaunch(_url)
        ? await launch(_url)
        : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Maybe some internet issue hehe, try it again..'),
            behavior: SnackBarBehavior.floating,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          ));
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
              icon: Icon(MyFlutterApp.github),
              onPressed: () {
                launchUrl();
              },
              iconSize: 35,
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
              iconSize: 35,
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
                  widget.title,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 10,
                ),
                Flexible(
                  flex: 2,
                  child: ListView(physics: BouncingScrollPhysics(), children: [
                    Text(
                      widget.decription,
                      style: TextStyle(fontSize: 20),
                    ),
                  ]),
                )
              ],
            ),
          ),
          Expanded(
            child: widget.content,
          ),
        ]),
      ),
    );
  }
}
