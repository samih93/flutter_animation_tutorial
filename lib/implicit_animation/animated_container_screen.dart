import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  Color _color = Colors.grey;
  double _radius = 10;
  double _width = 100;
  double _height = 100;

  void setAnimationsValue() {
    setState(() {
      _color = Colors.orange;
      _radius = 40;
      _width = 200;
      _height = 200;
    });
  }

  resetAnimation() {
    setState(() {
      _color = Colors.grey;
      _radius = 10;
      _width = 100;
      _height = 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container Example"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setAnimationsValue();
          },
          child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
                color: _color, borderRadius: BorderRadius.circular(_radius)),
            duration: Duration(milliseconds: 400),
            child: Image.asset('assets/jerry.png'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          resetAnimation();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
