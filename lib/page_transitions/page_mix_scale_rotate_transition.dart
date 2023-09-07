import 'package:flutter/material.dart';

class PageMixScaleRotateTransition extends PageRouteBuilder {
  final dynamic page;
  PageMixScaleRotateTransition({required this.page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var myAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(parent: animation, curve: Curves.linear));
              return ScaleTransition(
                scale: myAnimation,
                child: RotationTransition(turns: myAnimation, child: child),
              );
            });
}
