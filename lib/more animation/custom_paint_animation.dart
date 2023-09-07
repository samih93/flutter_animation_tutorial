import 'package:flutter/material.dart';

class CustomPaintAnimationScreen extends StatefulWidget {
  const CustomPaintAnimationScreen({super.key});

  @override
  State<CustomPaintAnimationScreen> createState() =>
      _CustomPaintAnimationState();
}

class _CustomPaintAnimationState extends State<CustomPaintAnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _sizeanimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _sizeanimation =
        Tween<double>(begin: 50, end: 150).animate(_animationController);
    _colorAnimation = ColorTween(begin: Colors.red, end: Colors.blue).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn));
    _animationController.repeat(reverse: true);
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
      appBar: AppBar(title: Text("custom painter animation")),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedBuilder(
              animation: _animationController,
              builder: (BuildContext context, Widget? child) {
                return CustomPaint(
                  painter: CirclePainter(_sizeanimation.value,
                      _colorAnimation.value ?? Colors.red),
                  size: Size.square(200),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            AnimatedBuilder(
              animation: _animationController,
              builder: (BuildContext context, Widget? child) {
                return CustomPaint(
                  painter: SquarePainter(_sizeanimation.value,
                      _colorAnimation.value ?? Colors.red),
                  size: Size.square(200),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  final double _size;
  final Color _color;

  CirclePainter(this._size, this._color);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = _color;
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), _size, paint);
  }

  @override
  bool shouldRepaint(CirclePainter olddelagate) {
    // TODO: implement shouldRepaint
    return (_size != olddelagate._size || _color != olddelagate._color);
  }
}

class SquarePainter extends CustomPainter {
  final double _size;
  final Color _color;

  SquarePainter(this._size, this._color);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = _color;
    paint.style = PaintingStyle.fill;
    canvas.drawRect(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2), radius: _size),
        paint);
  }

  @override
  bool shouldRepaint(SquarePainter olddelagate) {
    // TODO: implement shouldRepaint
    return (_size != olddelagate._size || _color != olddelagate._color);
  }
}
