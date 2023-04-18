import 'package:flutter/material.dart';
import 'package:strongez/app/design/atoms/atomic_radius.dart';

class DefaultSlideCard extends StatelessWidget {
  final double width;
  final Widget widget;

  const DefaultSlideCard(
      {super.key, required this.widget, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AtomicRadius.defaultRadius)),
        child: widget,
      ),
    );
  }
}
