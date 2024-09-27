import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> {
  double width = 190.0;
  double height = 150.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TweenAnimationBuilder(
              tween: Tween(begin: 10.0, end: 190.0),
              duration: Duration(seconds: 5),
              builder: (context, value, child) {
                return Center(
                  child: Container(
                    width: value,
                    height: value,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.red.withOpacity(0.3),
                              blurRadius: value,
                              spreadRadius: value)
                        ]),
                    child: Center(child: child),
                  ),
                );
              },
              child: const Text("Animated container"),
            )
          ],
        ),
      ),
    ));
  }
}
