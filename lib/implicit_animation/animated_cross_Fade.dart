import 'package:flutter/material.dart';

class AnimatedCrossFadeScreen extends StatefulWidget {
  const AnimatedCrossFadeScreen({super.key});

  @override
  State<AnimatedCrossFadeScreen> createState() =>
      _AnimatedCrossFadeScreenState();
}

class _AnimatedCrossFadeScreenState extends State<AnimatedCrossFadeScreen> {
  bool _isVisibleFirstChild = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Cross Fade"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isVisibleFirstChild = !_isVisibleFirstChild;
            });
          },
          child: AnimatedCrossFade(
            firstCurve: Curves.linear,
            secondCurve: Curves.linear,
            duration: const Duration(milliseconds: 1000),
            firstChild: Container(
                width: 100,
                height: 100,
                color: Colors.grey,
                child: Image.asset('assets/tom.png')),
            secondChild: Container(
                width: 100,
                height: 100,
                color: Colors.orange,
                child: Image.asset('assets/jerry.png')),
            crossFadeState: _isVisibleFirstChild
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
          ),
        ),
      ),
    );
  }
}
