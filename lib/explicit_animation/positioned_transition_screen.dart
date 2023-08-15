import 'package:flutter/material.dart';

class PositionedTransitionScreen extends StatefulWidget {
  const PositionedTransitionScreen({super.key});

  @override
  State<PositionedTransitionScreen> createState() =>
      _PositionedTransitionScreenState();
}

class _PositionedTransitionScreenState extends State<PositionedTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<RelativeRect> _jerryAniamtion;
  late Animation<RelativeRect> _tomAniamtion;
  late Animation<RelativeRect> _spikeAniamtion;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    _jerryAniamtion = RelativeRectTween(
            begin: RelativeRect.fromLTRB(0, 0, 0, 0),
            end: RelativeRect.fromLTRB(250, 250, 0, 0))
        .animate(_animationController);
    _tomAniamtion = RelativeRectTween(
            begin: RelativeRect.fromLTRB(0, 0, 0, 0),
            end: RelativeRect.fromLTRB(150, 150, 0, 0))
        .animate(_animationController);
    _spikeAniamtion = RelativeRectTween(
            begin: RelativeRect.fromLTRB(0, 0, 0, 0),
            end: RelativeRect.fromLTRB(50, 50, 0, 0))
        .animate(_animationController);
  }

  _startAnimation() {
    _animationController.reset();
    _animationController.forward();
  }

  _reverseAnimation() {
    _animationController.reverse();
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
        title: Text("Positioned Transition"),
      ),
      body: Stack(
        children: [
          PositionedTransition(
              rect: _spikeAniamtion,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Image.asset('assets/dog.png'),
              )),
          PositionedTransition(
              rect: _tomAniamtion,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.grey,
                child: Image.asset('assets/tom.png'),
              )),
          PositionedTransition(
              rect: _jerryAniamtion,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.orange,
                child: Image.asset('assets/jerry.png'),
              )),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _startAnimation();
                      },
                      child: Icon(Icons.start)),
                  ElevatedButton(
                      onPressed: () {
                        _reverseAnimation();
                      },
                      child: Icon(Icons.close)),
                ]),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
