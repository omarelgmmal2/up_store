import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AnimatedWrapper extends StatelessWidget {
  final Widget child;
  final int index,duration,delayPerItem;
  const AnimatedWrapper({
    super.key,
    required this.child,
    required this.index,
    this.duration = 400,
    this.delayPerItem = 150,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      from: 30,
      duration: Duration(milliseconds: duration),
      delay: Duration(milliseconds: index * delayPerItem),
      child: child,
    );
  }
}
