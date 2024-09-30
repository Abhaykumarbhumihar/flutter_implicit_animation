import 'dart:math';

import 'package:animation_flutter/pages/animated_button.dart';
import 'package:animation_flutter/pages/animated_crossfade.dart';
import 'package:animation_flutter/pages/animated_icon.dart';
import 'package:animation_flutter/pages/animated_padding.dart';
import 'package:animation_flutter/pages/animated_physical_model.dart';
import 'package:animation_flutter/pages/animated_position.dart';
import 'package:animation_flutter/pages/animated_rotation.dart';
import 'package:animation_flutter/pages/animated_sizebox.dart';
import 'package:animation_flutter/pages/animated_switcher.dart';
import 'package:animation_flutter/pages/animated_text.dart';
import 'package:animation_flutter/pages/animation_container.dart';
import 'package:animation_flutter/pages/hero_animation/first_screen.dart';
import 'package:animation_flutter/pages/home_page.dart';
import 'package:animation_flutter/pages/list_animation.dart';
import 'package:flutter/material.dart';

import 'pages/animated_align.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
