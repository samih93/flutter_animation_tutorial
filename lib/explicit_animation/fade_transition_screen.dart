import 'package:flutter/material.dart';

class FadeTransitionScreen extends StatefulWidget {
  const FadeTransitionScreen({super.key});

  @override
  State<FadeTransitionScreen> createState() => _FadeTransitionScreenState();
}

class _FadeTransitionScreenState extends State<FadeTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _animation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.bounceIn));
  }

  _startAnimation() {
    setState(() {
      _animationController.reset();
      _animationController.forward();
    });
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
        title: const Text("Animated Builder"),
      ),
      body: Center(
        child: Center(
          child: FadeTransition(
            opacity: _animation,
            child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Center(
                    child: Text(
                  "Hello",
                  style: TextStyle(color: Colors.white),
                ))),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _startAnimation();
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
