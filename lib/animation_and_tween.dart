import 'package:flutter/material.dart';

class AnimationAndTween extends StatefulWidget {
  const AnimationAndTween({super.key});

  @override
  State<AnimationAndTween> createState() => _AnimationAndTweenState();
}

class _AnimationAndTweenState extends State<AnimationAndTween>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  late Animation _animation;
  //! or
  // late Animation<Color> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = ColorTween(begin: Colors.red, end: Colors.blue)
        .animate(_animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {});
    // ! OR
    // _animation = Tween<Color>(begin: Colors.red, end: Colors.blue)
    //     .animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animation Color status")),
      body: Center(
          child: Column(children: [
        Text(
            "Animation Color Value : ${_animationController.value.toStringAsFixed(2)}"),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Animation Color : ${_animation.value}",
          style: TextStyle(color: _animation.value),
        ),
      ])),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        ElevatedButton(
            onPressed: () {
              _animationController.forward();
            },
            child: Icon(Icons.play_arrow)),
        ElevatedButton(
            onPressed: () {
              _animationController.reverse();
            },
            child: Icon(Icons.recycling_sharp))
      ]),
    );
  }
}
