import 'package:flutter/material.dart';

class AnimatedPhysicalModelExample extends StatefulWidget {
  @override
  _AnimatedPhysicalModelExampleState createState() =>
      _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState
    extends State<AnimatedPhysicalModelExample> {
  bool _isCircle = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("AnymatedPhysicalModel"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  _isCircle = !_isCircle; // Toggle between circle and rectangle
                });
              },
              child: AnimatedPhysicalModel(
                shape: _isCircle ? BoxShape.circle : BoxShape.rectangle,
                elevation: _isCircle ? 10 : 2,
                color: _isCircle ? Colors.blue : Colors.green,
                shadowColor: Colors.black,
                duration: Duration(seconds: 3),
                curve: Curves.linear,

                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text('Tap me', style: TextStyle(color: Colors.white)),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
