import 'package:flutter/material.dart';

class AnimatedPositionedScreen extends StatefulWidget {
  const AnimatedPositionedScreen({super.key});

  @override
  State<AnimatedPositionedScreen> createState() =>
      _AnimatedPositionedScreenState();
}

class _AnimatedPositionedScreenState extends State<AnimatedPositionedScreen> {
  bool _startEating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Positioned Example"),
      ),
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional.topStart,
            child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('assets/cheese.png')),
          ),
          AnimatedPositioned(
              top: _startEating ? 0 : MediaQuery.of(context).size.height - 200,
              child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/dog.png')),
              duration: Duration(milliseconds: 300)),
          AnimatedPositioned(
              left: _startEating ? 0 : MediaQuery.of(context).size.width - 100,
              child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/jerry.png')),
              duration: Duration(milliseconds: 1000)),
          AnimatedPositioned(
              top: _startEating ? 0 : MediaQuery.of(context).size.height / 2,
              left: _startEating ? 0 : MediaQuery.of(context).size.width / 2,
              child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/tom.png')),
              duration: Duration(milliseconds: 1200))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _startEating = !_startEating;
          });
        },
        child: Icon(_startEating ? Icons.place : Icons.back_hand),
      ),
    );
  }
}
