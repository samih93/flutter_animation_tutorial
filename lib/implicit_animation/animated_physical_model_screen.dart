import 'package:flutter/material.dart';

class AnimatedPhysicalModelScreen extends StatefulWidget {
  const AnimatedPhysicalModelScreen({super.key});

  @override
  State<AnimatedPhysicalModelScreen> createState() =>
      _AnimatedPhysicalModelScreenState();
}

class _AnimatedPhysicalModelScreenState
    extends State<AnimatedPhysicalModelScreen> {
  bool _isPressed = false;
  _toogleElevation() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Physical Example"),
      ),
      body: Center(
        child: GestureDetector(
            onTap: () {
              _toogleElevation();
            },
            child: AnimatedPhysicalModel(
              color: Colors.grey,
              duration: Duration(milliseconds: 400),
              elevation: _isPressed ? 60 : 0,
              shadowColor: Colors.blueGrey,
              shape: BoxShape.rectangle,
              child: Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/tom.png'),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
