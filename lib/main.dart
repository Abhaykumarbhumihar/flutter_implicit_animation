import 'dart:math';

import 'package:animation_flutter/pages/animated_button.dart';
import 'package:animation_flutter/pages/animated_crossfade.dart';
import 'package:animation_flutter/pages/animated_padding.dart';
import 'package:animation_flutter/pages/animated_physical_model.dart';
import 'package:animation_flutter/pages/animated_switcher.dart';
import 'package:animation_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'pages/tween_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimatedPhysicalModelExample(),
    );
  }
}
