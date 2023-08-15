import 'package:flutter/material.dart';

class SizeTransitionScreen extends StatefulWidget {
  const SizeTransitionScreen({super.key});

  @override
  State<SizeTransitionScreen> createState() => _SizeTransitionScreenState();
}

class _SizeTransitionScreenState extends State<SizeTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
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
        title: Text("Size Transition"),
      ),
      body: Center(
          child: GestureDetector(
        onTap: () {
          _startAnimation();
        },
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: Center(
            child: SizeTransition(
                sizeFactor: _animation,
                child: Container(
                    width: 60,
                    height: 60,
                    color: Colors.orange,
                    child: Image.asset('assets/dog.png'))),
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
