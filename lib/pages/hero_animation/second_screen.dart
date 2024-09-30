import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Hero widget for Image
            Hero(
              tag: 'imageHero',
              child: Image.network(
                'https://picsum.photos/250?image=9',
                width: 300,
                height: 300,
              ),
            ),
            const SizedBox(height: 20),

            // Hero widget for Text Description
            const Hero(
              tag: 'textHero',
              child: Material(
                color: Colors.transparent,
                child: Text(
                  'Beautiful Full-Screen Image',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Hero widget for Button
            Hero(
              tag: 'buttonHero',
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}