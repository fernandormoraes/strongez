import 'package:flutter/material.dart';
import 'package:strongez/app/design/atoms/atomic_padding.dart';
import 'package:strongez/app/design/molecules/default_slide_card.dart';

class SlideCardDisplay extends StatelessWidget {
  final double width;
  final String title;
  final String subText;
  final String counterText;

  const SlideCardDisplay(
      {super.key,
      required this.width,
      required this.title,
      required this.subText,
      required this.counterText});

  @override
  Widget build(BuildContext context) {
    return DefaultSlideCard(
        width: width,
        widget: Padding(
          padding: const EdgeInsets.all(AtomicPadding.minimalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Divider(),
              Row(
                children: [
                  Text(counterText),
                  const Spacer(),
                  Text(subText),
                ],
              )
            ],
          ),
        ));
  }
}
