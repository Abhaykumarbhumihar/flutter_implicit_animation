import 'package:flutter/material.dart';

class AnimatedSizeboxExample extends StatefulWidget {
  const AnimatedSizeboxExample({super.key});

  @override
  State<AnimatedSizeboxExample> createState() => _AnimatedSizeboxExampleState();
}

class _AnimatedSizeboxExampleState extends State<AnimatedSizeboxExample> {
  bool _isExpanded = false;
  double _boxHeight = 100.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedSizebox"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            AnimatedSize(
              duration: const Duration(seconds: 1),
              // Animation duration
              curve: Curves.easeInOut,
              // Animation curve
              onEnd: () {
                print("Animation complete");
              },
              child: Container(
                width: 200,
                // Fixed width
                height: _isExpanded ? 200 : _boxHeight,
                // Change height based on state
                color: Colors.blue,
                // Box color
                alignment: Alignment.center,
                child: Text(
                  "Tap to ${_isExpanded ? 'shrink' : 'expand'}",
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: const Text("Toggle Size"),
            ),
          ],
        ),
      ),
    ));
  }
}
