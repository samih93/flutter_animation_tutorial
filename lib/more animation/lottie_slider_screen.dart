import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieSliderScreen extends StatefulWidget {
  const LottieSliderScreen({super.key});

  @override
  State<LottieSliderScreen> createState() => _LottieSliderExampleState();
}

class _LottieSliderExampleState extends State<LottieSliderScreen> {
  List<String> _LottiePath = [
    "assets/lotties/bird.json",
    "assets/lotties/car.json",
    "assets/lotties/tigger.json",
  ];

  final PageController _pageController = PageController();
  int _currentIndex = 0;

  _startAnimation() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      if (_currentIndex == _LottiePath.length - 1) {
        _pageController.animateToPage(0,
            duration: Duration(milliseconds: 500), curve: Curves.decelerate);
      } else {
        _pageController.nextPage(
            duration: Duration(milliseconds: 500), curve: Curves.decelerate);
      }
      _startAnimation();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startAnimation();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lottie Aniamtion")),
      body: PageView.builder(
          controller: _pageController,
          onPageChanged: (val) => setState(() {
                _currentIndex = val;
              }),
          itemBuilder: (context, index) {
            return Center(
              child: Lottie.asset("${_LottiePath[index]}",
                  repeat: true, reverse: false),
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _pageController.animateToPage(value,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.bounceIn);
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.animation,
                ),
                label: 'bird'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.car_crash,
                ),
                label: 'car'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.airline_seat_legroom_normal_sharp,
                ),
                label: 'tigger'),
          ]),
    );
  }
}
