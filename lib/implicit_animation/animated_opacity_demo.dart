import 'package:flutter/material.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  const AnimatedOpacityScreen({super.key});

  @override
  State<AnimatedOpacityScreen> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container Example"),
      ),
      body: Center(
          child: Column(
        children: [
          AnimatedOpacity(
              opacity: _opacity,
              child: Text(
                "Tom & Jeryy",
                style: TextStyle(fontSize: 30),
              ),
              curve: Curves.decelerate,
              duration: Duration(
                milliseconds: 700,
              )),
          SizedBox(
            height: 100,
            child: AnimatedOpacity(
                opacity: _opacity,
                child: Image.asset('assets/jerry.png'),
                duration: Duration(
                  milliseconds: 1800,
                )),
          ),
          SizedBox(
            height: 100,
            child: AnimatedOpacity(
                opacity: _opacity,
                child: Image.asset('assets/tom.png'),
                duration: Duration(
                  milliseconds: 3000,
                )),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _doOpacity();
        },
        child: Icon(Icons.remove_red_eye),
      ),
    );
  }

  _doOpacity() {
    setState(() {
      _opacity = _opacity == 0 ? 1 : 0;
    });
  }
}
