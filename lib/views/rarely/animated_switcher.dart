import 'package:flutter/material.dart';

class MyAnimatedSwitcher extends StatefulWidget {
  const MyAnimatedSwitcher({Key? key}) : super(key: key);

  @override
  _MyAnimatedSwitcherState createState() => _MyAnimatedSwitcherState();
}

class _MyAnimatedSwitcherState extends State<MyAnimatedSwitcher> {
  int _currentIndex = 0;
  var _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animation = Text('$_currentIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // ==============HERE IS KEY POINT================
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 350),
          child: Text(
            '$_currentIndex',
            key: ValueKey<int>(_currentIndex),
            style: TextStyle(fontSize: 30),
          ),
          transitionBuilder: (child, animation) {
            return ScaleTransition(scale: animation, child: child);
          },
        ),
      ),
      // ==============HERE IS KEY POINT================
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          onPressed: () {
            setState(() {
              _currentIndex++;
            });
          },
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient:
                  LinearGradient(colors: [Colors.red, Colors.orangeAccent]),
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
