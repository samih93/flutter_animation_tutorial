import 'package:flutter/material.dart';

class PageSlideTransition extends PageRouteBuilder {
  final dynamic page;
  PageSlideTransition({required this.page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              // Offset(-1, 0) == >left to right
              // Offset(1, 0) == >right to left
              // Offset(0, 1) == >bottom to top
              // Offset(0, -1) == >top to bottom
              var tween =
                  Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero);

              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            });
}
