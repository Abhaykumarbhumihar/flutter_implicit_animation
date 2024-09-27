import 'package:flutter/material.dart';

class AnimatedCrossfadeExample extends StatefulWidget {
  const AnimatedCrossfadeExample({super.key});

  @override
  State<AnimatedCrossfadeExample> createState() => _AnimatedCrossfadeExampleState();
}

class _AnimatedCrossfadeExampleState extends State<AnimatedCrossfadeExample> {

  bool _isFirst=true;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("AnimatedCrossFade"),),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            AnimatedCrossFade(
                firstChild: Image.network('https://picsum.photos/250?image=9'),
                secondChild: Image.network('https://picsum.photos/250?image=10'),
                crossFadeState: _isFirst?CrossFadeState.showFirst:CrossFadeState.showSecond,
                duration: Duration(seconds: 3)),

            ElevatedButton(onPressed: (){
              setState(() {
                _isFirst=!_isFirst;
              });
            }, child: Text("Swape image"))
          ],
        ),
      ),

    ));
  }
}
