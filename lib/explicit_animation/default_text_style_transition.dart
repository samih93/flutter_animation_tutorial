import 'package:flutter/material.dart';

class DefaultTextStyleTransitionScreen extends StatefulWidget {
  const DefaultTextStyleTransitionScreen({super.key});

  @override
  State<DefaultTextStyleTransitionScreen> createState() =>
      _defaultTextStyleTransitionScreenState();
}

class _defaultTextStyleTransitionScreenState
    extends State<DefaultTextStyleTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
  }

  TextStyle textStyle1 = TextStyle(
    color: Colors.red,
    fontSize: 20,
  );
  TextStyle textStyle2 = TextStyle(color: Colors.blue, fontSize: 15);

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  setAnimations() {
    if (_animationController.status == AnimationStatus.completed) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }
  }

  revereseAnimation() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Default Text Style Transition"),
      ),
      body: Center(
          child: Column(
        children: [
          DefaultTextStyleTransition(
              style: _animation
                  .drive(TextStyleTween(begin: textStyle1, end: textStyle2)),
              child: Text("Hello World")),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            setAnimations();
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
