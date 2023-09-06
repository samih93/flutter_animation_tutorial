import 'package:flutter/material.dart';

class PageRotationTransition extends PageRouteBuilder {
  final dynamic page;
  PageRotationTransition({required this.page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              //end 1 ==> 1 turn
              var myAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(parent: animation, curve: Curves.linear));
              return RotationTransition(
                turns: myAnimation,
                child: child,
              );
            });
}
