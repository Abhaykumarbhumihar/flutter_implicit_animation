import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({super.key});

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {

  bool istap=false;

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
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: (){
                  setState(() {
                    istap=!istap;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 2),
                  width:istap?150: 80,
                  height: 60,
                  decoration: BoxDecoration(color:istap?Colors.green: Colors.blue,
                  borderRadius: BorderRadius.circular(istap?30:15.0)),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
