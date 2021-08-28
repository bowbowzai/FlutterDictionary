import 'package:flutter/material.dart';

class MySnackBar extends StatefulWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  _MySnackBarState createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  showSnackBar(context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Hi I am SNACKBAR!!!'),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
      action: SnackBarAction(
        textColor: Colors.red,
        label: 'Undo',
        onPressed: () {},
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Click me',
            style: TextStyle(fontSize: 25),
          ),
          onPressed: () {
            showSnackBar(context);
          },
        ),
      ),
    );
  }
}
