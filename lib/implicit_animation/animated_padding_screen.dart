import 'package:flutter/material.dart';

class AnimatedPaddingScreen extends StatefulWidget {
  const AnimatedPaddingScreen({super.key});

  @override
  State<AnimatedPaddingScreen> createState() => _AnimatedPaddingScreenState();
}

class _AnimatedPaddingScreenState extends State<AnimatedPaddingScreen> {
  List<String> animals = ['cheese', 'dog', 'jerry', 'tom'];
  double _paddingValue = 10;
  bool _isExpanded = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Padding Example"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          ...animals.map((e) => AnimatedPadding(
                duration: Duration(milliseconds: 400),
                padding: EdgeInsets.all(_paddingValue),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8)),
                    child: Image.asset('assets/${e}.png')),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _doPadding();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  _doPadding() {
    setState(() {
      _paddingValue = _isExpanded ? 30 : 10;
      _isExpanded = !_isExpanded;
    });
  }
}
