import 'package:flutter/material.dart';

class AnimationControllerStatus extends StatefulWidget {
  const AnimationControllerStatus({super.key});

  @override
  State<AnimationControllerStatus> createState() =>
      _AnimationControllerStatusState();
}

class _AnimationControllerStatusState extends State<AnimationControllerStatus>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    // ! Tween is an object that defines a mapping between of value of one type double to a range of of another types (Color, Size ,Rect)
    // ! which used to animate the visual appearence of widgets int the app
    _animation = Tween<double>(begin: 0, end: 10).animate(_animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        // ! status : forward , reverse , completed ,  dismissed ==> like not started yet
        print('Animation Status : ${status}');
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
      appBar: AppBar(title: const Text("Animation Controller status")),
      body: Center(
          child: Column(children: [
        Text(
            "Animation Controller Value : ${_animationController.value.toStringAsFixed(2)}"),
        const SizedBox(
          height: 20,
        ),
        Text("Animation Value : ${_animation.value.toStringAsFixed(2)}"),
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
