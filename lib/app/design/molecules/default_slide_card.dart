import 'package:flutter/material.dart';
import 'package:strongez/app/design/atoms/atomic_radius.dart';

class DefaultSlideCard extends StatelessWidget {
  final double width;
  final Widget widget;
  final double? elevation;
  final Color? color;

  const DefaultSlideCard(
      {super.key,
      required this.widget,
      required this.width,
      this.elevation,
      this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        color: color,
        elevation: elevation,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AtomicRadius.defaultRadius)),
        child: widget,
      ),
    );
  }
}
