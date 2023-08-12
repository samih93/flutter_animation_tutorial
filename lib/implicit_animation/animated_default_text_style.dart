import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleScreen extends StatefulWidget {
  const AnimatedDefaultTextStyleScreen({super.key});

  @override
  State<AnimatedDefaultTextStyleScreen> createState() =>
      _AnimatedDefaultTextStyleExampleState();
}

class _AnimatedDefaultTextStyleExampleState
    extends State<AnimatedDefaultTextStyleScreen> {
  Color _color = Colors.grey;
  double _fontSize = 14;

  void setAnimationsValue() {
    setState(() {
      _color = Colors.orange;
      _fontSize = 25;
    });
  }

  resetAnimation() {
    setState(() {
      _color = Colors.grey;
      _fontSize = 14;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container Example"),
      ),
      body: Center(
          child: Column(
        children: [
          AnimatedDefaultTextStyle(
              curve: Curves.easeIn,
              duration: Duration(milliseconds: 400),
              style: TextStyle(color: _color, fontSize: _fontSize),
              child: Text("Animated Text")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    setAnimationsValue();
                  },
                  icon: Icon(Icons.add)),
              IconButton(
                  onPressed: () {
                    resetAnimation();
                  },
                  icon: Icon(Icons.remove))
            ],
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
