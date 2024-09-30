import 'package:flutter/material.dart';

class AnimatedPositionExample extends StatefulWidget {
  const AnimatedPositionExample({super.key});

  @override
  State<AnimatedPositionExample> createState() => _AnimatedPositionExampleState();
}

class _AnimatedPositionExampleState extends State<AnimatedPositionExample> {
  bool _isMoved = false;
  void _moveBox() {
    setState(() {
      _isMoved = !_isMoved;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: const Text("AnimatedPosition"),),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            // AnimatedPositioned widget
            AnimatedPositioned(
              top: _isMoved ? 2 : 50,
              left: _isMoved ? 200 : 0,
              width: _isMoved ? 150 : 80,
              height: _isMoved ? 150 : 100,
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                color: Colors.blue,
              ),
            ),
            // Button to trigger the animation
            Positioned(
              bottom: 20,
              left: 20,
              child: ElevatedButton(
                onPressed: _moveBox,
                child: const Text('Move and Resize Box'),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
