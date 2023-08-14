import 'package:flutter/material.dart';

class AnimatedSwitcherScreen extends StatefulWidget {
  const AnimatedSwitcherScreen({super.key});

  @override
  State<AnimatedSwitcherScreen> createState() => _AnimatedSwitcherScreenState();
}

class _AnimatedSwitcherScreenState extends State<AnimatedSwitcherScreen> {
  bool _isVisibleFirstChild = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Switcher Screen"),
      ),
      body: Center(
        child: AnimatedSwitcher(
          switchInCurve: Curves.linear,
          duration: Duration(seconds: 1),
          child: _isVisibleFirstChild
              ? ElevatedButton(onPressed: () {}, child: Text("Elevated Button"))
              : CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isVisibleFirstChild = !_isVisibleFirstChild;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
