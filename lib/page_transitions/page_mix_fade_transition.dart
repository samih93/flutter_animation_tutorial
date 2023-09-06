import 'package:flutter/material.dart';

class PageMixFadeSizeTransition extends PageRouteBuilder {
  final dynamic page;
  PageMixFadeSizeTransition({required this.page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return Align(
                alignment: Alignment.center,
                child: SizeTransition(
                  sizeFactor: animation,
                  child: FadeTransition(opacity: animation, child: child),
                ),
              );
            });
}
