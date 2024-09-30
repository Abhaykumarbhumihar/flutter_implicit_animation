import 'package:flutter/material.dart';

class AnimatedRotationExample extends StatefulWidget {
  const AnimatedRotationExample({super.key});

  @override
  State<AnimatedRotationExample> createState() =>
      _AnimatedRotationExampleState();
}

class _AnimatedRotationExampleState extends State<AnimatedRotationExample> {

  double _turns = 0;
  void _rotateWidget() {
    setState(() {
      _turns += 1.0;  // Rotate by 90 degrees (0.25 = 90/360)
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("AmimatedRotation"),
      ),
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                AnimatedRotation(
                  turns: _turns,
                  duration: Duration(seconds: 3),
                  curve: Curves.easeInOut,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: Icon(Icons.star, color: Colors.white, size: 50),
                  ),
                ),
                SizedBox(height: 20),
                // Button to trigger the rotation
                ElevatedButton(
                  onPressed: _rotateWidget,
                  child: Text('Rotate Star'),
                ),
              ],
            ),
          ),
    ));
  }
}
