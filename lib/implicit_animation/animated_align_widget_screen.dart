import 'package:flutter/material.dart';

class AnimatedAlignDemoScreen extends StatefulWidget {
  const AnimatedAlignDemoScreen({super.key});

  @override
  State<AnimatedAlignDemoScreen> createState() =>
      _AnimationAlignDemoScreenState();
}

class _AnimationAlignDemoScreenState extends State<AnimatedAlignDemoScreen>
    with SingleTickerProviderStateMixin {
  int _jerryAlignedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Align Example"),
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            alignment: getNextAlignment(_jerryAlignedIndex),
            duration: Duration(milliseconds: 500),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset('assets/tom.png'),
            ),
          ),
          AnimatedAlign(
            alignment: getNextAlignment(_jerryAlignedIndex + 1),
            duration: Duration(milliseconds: 500),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset('assets/jerry.png'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _jerryAlignedIndex++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Alignment getNextAlignment(int _alignmentindex) {
    switch (_alignmentindex) {
      case 0:
        return Alignment.topLeft;
      case 1:
        return Alignment.topCenter;
      case 2:
        return Alignment.topRight;
      case 3:
        return Alignment.centerLeft;
      case 4:
        return Alignment.center;
      case 5:
        return Alignment.centerRight;
      case 6:
        return Alignment.bottomLeft;
      case 7:
        return Alignment.bottomCenter;
      case 8:
        return Alignment.bottomRight;

      default:
        _jerryAlignedIndex = 0;
        return Alignment.topLeft;
    }
  }
}
