import 'package:flutter/material.dart';

class MyClipRRect extends StatefulWidget {
  const MyClipRRect({Key? key}) : super(key: key);

  @override
  _MyClipRRectState createState() => _MyClipRRectState();
}

class _MyClipRRectState extends State<MyClipRRect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: Image.network(
              'https://images.unsplash.com/photo-1510215744419-742d9dce947f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGljdHVyZSUyMG9mJTIwYSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
        ),
      ),
    );
  }
}
