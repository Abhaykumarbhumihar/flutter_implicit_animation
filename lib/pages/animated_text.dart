import 'package:flutter/material.dart';

class AnimatedTextExample extends StatefulWidget {
  const AnimatedTextExample({super.key});

  @override
  State<AnimatedTextExample> createState() => _AnimatedTextExampleState();
}

class _AnimatedTextExampleState extends State<AnimatedTextExample> {
  bool _isTap = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedDefaultTextStyle"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            AnimatedDefaultTextStyle(
              onEnd: () {
                print("Animation complete");
              },
              style: TextStyle(
                fontSize: _isTap ? 30 : 20, // Font size changes
                color: _isTap ? Colors.blue : Colors.red, // Font color changes
                fontWeight: _isTap
                    ? FontWeight.bold
                    : FontWeight.normal, // Font weight changes
              ),
              duration: const Duration(seconds: 1),
              // Animation duration
              curve: Curves.easeInOut,
              child: const Text(
                  "Abhay kumar bhumihar"), // Animation curve for a smooth effect
            ),
            AnimatedPadding(
              duration: const Duration(seconds: 2),
              curve: Curves.linear,
              padding: EdgeInsets.only(top: _isTap ? 30.0 : 5.0),
              child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _isTap = !_isTap;
                      });
                    },
                    child: const Text("Tap for animate text")),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
