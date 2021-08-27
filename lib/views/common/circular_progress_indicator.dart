import 'package:flutter/material.dart';

class MyCircularProgressIndicator extends StatefulWidget {
  const MyCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  _MyCircularProgressIndicatorState createState() =>
      _MyCircularProgressIndicatorState();
}

class _MyCircularProgressIndicatorState
    extends State<MyCircularProgressIndicator> {
  bool _isLoading = false;
  bool _isButtonVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Visibility(
            visible: _isButtonVisible,
            child: TextButton(
              child: Text(
                'press here',
                style: TextStyle(fontSize: 25),
              ),
              onPressed: () {
                setState(() {
                  _isLoading = !_isLoading;
                  _isButtonVisible = !_isButtonVisible;
                });
              },
            ),
          ),
        ),
        _isButtonVisible
            ? Container()
            : Center(
                child: TextButton(
                  child: Text(
                    'Click here to cancel loading',
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {
                    setState(() {
                      _isLoading = !_isLoading;
                      _isButtonVisible = !_isButtonVisible;
                    });
                  },
                ),
              ),
        _isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(),
      ]),
    );
  }
}
