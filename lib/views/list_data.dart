import 'package:flutter/material.dart';

class ListData extends StatefulWidget {
  final String data;
  final Function navigateFunc;
  const ListData({Key? key, required this.data, required this.navigateFunc})
      : super(key: key);

  @override
  _ListDataState createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  @override
  Widget build(BuildContext context) {
    
    return TextButton(
      style: TextButton.styleFrom(primary: Colors.black),
      onPressed: () {
        widget.navigateFunc(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Row(
          children: [
            Text(
              widget.data,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
