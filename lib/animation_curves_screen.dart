import 'package:flutter/material.dart';

class AnimationCurvesScreen extends StatefulWidget {
  const AnimationCurvesScreen({super.key});

  @override
  State<AnimationCurvesScreen> createState() => _AnimationCurvesScreenState();
}

class _AnimationCurvesScreenState extends State<AnimationCurvesScreen>
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
    _animation = ColorTween(begin: Colors.red, end: Colors.blue).animate(
        CurvedAnimation(
            parent: _animationController, curve: Curves.bounceInOut))
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
      appBar: AppBar(title: const Text("Animation Curves status")),
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
        SizedBox(
          height: 10,
        ),
        Container(
          color: _animation.value,
          height: 200,
          width: 200,
        )
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
