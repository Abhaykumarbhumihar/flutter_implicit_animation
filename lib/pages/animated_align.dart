import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {

   AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool isTap=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("AnimatedAlign"),),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                setState(() {
                  isTap=!isTap;
                });
              },
              child: Container(
                color: Colors.blueGrey,
                width: MediaQuery.of(context).size.width,
                height:  MediaQuery.of(context).size.height/3,
                child: AnimatedAlign(alignment: isTap?Alignment.topRight:Alignment.bottomLeft,

                  duration: Duration(seconds: 2),
                child: Icon(Icons.add_a_photo_sharp,color: Colors.red,),),

              ),

            )
          ],
        ),
      ),
    ));
  }
}
