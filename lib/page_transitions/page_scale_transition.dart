import 'package:flutter/material.dart';

class PageScaleTransition extends PageRouteBuilder {
  final dynamic page;
  PageScaleTransition({required this.page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var myAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(parent: animation, curve: Curves.easeInOut));
              return ScaleTransition(
                scale: myAnimation,
                child: child,
              );
            });
}
