import 'package:flutter/material.dart';

class AppBarExample extends StatefulWidget {
  const AppBarExample({Key? key}) : super(key: key);

  @override
  _AppBarExampleState createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.format_align_justify_rounded)),
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
    );
  }
}
