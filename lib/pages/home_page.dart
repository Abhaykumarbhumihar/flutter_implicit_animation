import 'package:animation_flutter/pages/tween_animation.dart';
import 'package:flutter/material.dart';

import 'animated_align.dart';
import 'animated_button.dart';
import 'animated_crossfade.dart';
import 'animated_icon.dart';
import 'animated_padding.dart';
import 'animated_physical_model.dart';
import 'animated_position.dart';
import 'animated_rotation.dart';
import 'animated_sizebox.dart';
import 'animated_switcher.dart';
import 'animated_text.dart';
import 'animation_container.dart';
import 'hero_animation/first_screen.dart';
import 'list_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> _animations = [
    {'title': 'Tween Animation', 'route': TweenAnimation()},
    {'title': 'Animated Align Example', 'route': AnimatedAlignExample()},
    {'title': 'Animated Button', 'route': AnimatedButton()},
    {
      'title': 'Animated Crossfade Example',
      'route': AnimatedCrossfadeExample()
    },
    {'title': 'Animated Icon Example', 'route': AnimatedIconExample()},
    {'title': 'Animated Padding Example', 'route': AnimatedPaddingExample()},
    {
      'title': 'Animated Physical Model Example',
      'route': AnimatedPhysicalModelExample()
    },
    {'title': 'Animated Position Example', 'route': AnimatedPositionExample()},
    {'title': 'Animated Rotation Example', 'route': AnimatedRotationExample()},
    {'title': 'Animated Sizebox Example', 'route': AnimatedSizeboxExample()},
    {'title': 'Animated Switcher Example', 'route': AnimatedSwitcherExample()},
    {'title': 'Animated Text Example', 'route': AnimatedTextExample()},
    {
      'title': 'Animation Container Example',
      'route': AnimationContainerExample()
    },
    {'title': 'List Animation Example', 'route': ListAnimationExample()},
    {
      'title': 'Hero Animation First Screen',
      'route': HeroAnmiationFirstScreen()
    },
  ];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  Widget _buildItem(
      Map<String, dynamic> item, Animation<double> animation, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset(1, 0), // Slide from right
          end: Offset(0, 0),
        ).animate(animation),
        child: GestureDetector(
          onTap: () {
            // Navigate to the respective animation screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => item['route'],
              ),
            );
          },
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(
                item['title'],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("All Animation"),
      ),
      body: AnimatedList(
          key: _listKey,
          initialItemCount: _animations.length,
          itemBuilder: (context, index, animation) {
            return _buildItem(_animations[index], animation, index);
          }),
    ));
  }
}
