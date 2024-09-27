import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  List<Color> generateRandomColors(int count) {
    Random random = Random();
    List<Color> colorList = [];

    for (int i = 0; i < count; i++) {
      colorList.add(Color.fromRGBO(
        random.nextInt(256), // Red (0-255)
        random.nextInt(256), // Green (0-255)
        random.nextInt(256), // Blue (0-255)
        1.0, // Opacity (1.0 for fully opaque)
      ));
    }

    return colorList;
  }

   List<Color> colors=[];

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
          body: Container(
        child: Column(
          children: <Widget>[
            Flexible(
                child: ListView.builder(
                    itemCount: colors.length,
                    itemBuilder: (context, index) {
                      return AnimatedContainer(
                        duration: const Duration(seconds: 2),
                        curve: Curves.easeOutSine,
                        width: 150,
                        height: 100,
                        color: colors[index],
                        // Assign the random color to each item
                        child: Center(
                          child: Text(
                            'Color ${index + 1}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    })),
            ElevatedButton(onPressed: (){
             setState(() {
               colors= generateRandomColors(10);
             });
            }, child: const Text("Click here "))
          ],
        ),
      )),
    );
  }
}
