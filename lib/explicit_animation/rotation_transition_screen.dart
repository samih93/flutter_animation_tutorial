import 'package:flutter/material.dart';

class RotationTransitionScreen extends StatefulWidget {
  const RotationTransitionScreen({super.key});

  @override
  State<RotationTransitionScreen> createState() =>
      _RotationTransitionScreenState();
}

class _RotationTransitionScreenState extends State<RotationTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 7));
    _animation = Tween<double>(begin: 0, end: 7).animate(_animationController);

    super.initState();
  }

  _startAnimation() {
    _animationController.reset();
    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rotation Transition"),
      ),
      body: Center(
          child: Center(
        child: RotationTransition(
          turns: _animation,
          child: Container(
              width: 100,
              height: 100,
              color: Colors.orange,
              child: Image.asset('assets/dog.png')),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _startAnimation();
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
