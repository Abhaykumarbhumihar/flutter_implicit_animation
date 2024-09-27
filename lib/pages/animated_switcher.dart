import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedSwitcherExample extends StatefulWidget {
  const AnimatedSwitcherExample({super.key});

  @override
  State<AnimatedSwitcherExample> createState() =>
      _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
  bool _isFirstWidget = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedSwitcher"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return RotationTransition(turns: animation,alignment: Alignment.center,child: child);

                  //FadeTransition(opacity: animation,child: child,);

                //   ScaleTransition(
                //   scale: animation,
                //   child: child,
                // );
              },
              child: _isFirstWidget
                  ? Container(
                      key: UniqueKey(),
                      height: 100.0,
                      width: 100.0,
                      color: Colors.red,
                    )
                  : Container(
                      key: UniqueKey(),
                      height: 100.0,
                      width: 100.0,
                      color: Colors.blue,
                    ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isFirstWidget = !_isFirstWidget;
                  print(_isFirstWidget);
                });
              },
              child: const Text('Switch Widget'),
            ),
          ],
        ),
      ),
    ));
  }
}
