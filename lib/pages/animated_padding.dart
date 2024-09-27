import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({super.key});

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingState();
}

class _AnimatedPaddingState extends State<AnimatedPaddingExample> {
  double _paddingValue = 10.0;
  double _bottomPaddingValue=5.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: AnimatedPadding(
                padding: EdgeInsets.only(left: _paddingValue,right: _paddingValue,bottom: _bottomPaddingValue),
                duration: Duration(seconds: 1),
                // Animation duration
                curve: Curves.easeInOut,
                // Animation curve
                onEnd: () {
                  print("Animation complete");
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/3,
                  color: Colors.blue,
                  child: FlutterLogo(size: 100), // Step 3: Child widget
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _paddingValue = _paddingValue == 10.0 ? 80.0 : 10.0;
                  _bottomPaddingValue = _bottomPaddingValue == 5.0 ? 30.0 : 5.0;
                });
              }, // Step 4: Button to change padding
              child: Text("Change Padding"),
            ),
          ],
        ),
      ),
    ));
  }
}
