import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:strongez/app/design/atoms/atomic_colors.dart';
import 'package:strongez/app/design/atoms/atomic_padding.dart';

class WorkoutGoalIndicator extends StatelessWidget {
  const WorkoutGoalIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Meta de tempo semanal',
          style: TextStyle(
            color: AtomicColors.darkBlue,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: AtomicPadding.defaultPadding),
        Align(
          alignment: Alignment.center,
          child: CircularPercentIndicator(
            radius: 80.0,
            lineWidth: 13.0,
            animation: true,
            percent: 0.25,
            center: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "25%",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text(
                    "Da semana",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                ],
              ),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: AtomicColors.darkBlue,
          ),
        ),
      ],
    );
  }
}
