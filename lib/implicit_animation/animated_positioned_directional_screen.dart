import 'package:flutter/material.dart';

class AnimatedPositionedDirectionalScreen extends StatefulWidget {
  const AnimatedPositionedDirectionalScreen({super.key});

  @override
  State<AnimatedPositionedDirectionalScreen> createState() =>
      _AnimatedPositionedDirectionalScreenState();
}

class _AnimatedPositionedDirectionalScreenState
    extends State<AnimatedPositionedDirectionalScreen> {
  double _top = 0;
  double _start = 0;
  double _bottom = 0;
  double _end = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Positioned directional "),
      ),
      body: Stack(
        children: [
          AnimatedPositionedDirectional(
            start: _start,
            top: _top,
            duration: Duration(milliseconds: 400),
            child: Container(
                width: 100,
                height: 100,
                child: Image.asset('assets/jerry.png')),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _start = _start - 20 < 0 ? 0 : _start - 20;
                    });
                  },
                  icon: Icon(Icons.arrow_circle_left_outlined),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _top = _top - 20 < 0 ? 0 : _top - 20;
                    });
                  },
                  icon: Icon(Icons.arrow_circle_up_rounded),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _top = _top + 200 > MediaQuery.of(context).size.height
                          ? _top
                          : _top + 20;
                    });
                  },
                  icon: Icon(Icons.arrow_circle_down_outlined),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _start = _start + 120 > MediaQuery.of(context).size.width
                          ? _start
                          : _start + 20;
                    });
                  },
                  icon: Icon(Icons.arrow_circle_right_outlined),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
