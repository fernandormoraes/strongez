import 'package:flutter/material.dart';
import 'package:strongez/app/design/atoms/atomic_padding.dart';

class WorkoutCard extends StatelessWidget {
  final String workoutTitle;
  final String time;
  final String date;

  const WorkoutCard(
      {super.key,
      required this.workoutTitle,
      required this.time,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.sports_handball_sharp,
          size: 30,
        ),
        const SizedBox(width: AtomicPadding.minimalPadding),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(workoutTitle),
            const SizedBox(height: AtomicPadding.labelPadding),
            Row(
              children: [
                const Icon(
                  Icons.timelapse_sharp,
                  size: 16,
                ),
                const SizedBox(width: AtomicPadding.labelPadding),
                Text(time),
              ],
            )
          ],
        ),
        const Spacer(),
        Text(date),
      ],
    );
  }
}
