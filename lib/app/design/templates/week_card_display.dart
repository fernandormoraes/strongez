import 'package:flutter/material.dart';
import 'package:strongez/app/design/atoms/atomic_colors.dart';
import 'package:strongez/app/design/atoms/atomic_padding.dart';
import 'package:strongez/app/design/molecules/default_slide_card.dart';
import 'package:strongez/app/design/organisms/see_more_button.dart';
import 'package:strongez/app/design/organisms/workout_card.dart';

class WeekCardDisplay extends StatelessWidget {
  final String title;
  final String counterLeftSideText;
  final String cardLeftSideText;
  final String counterRightSideText;
  final String cardRightSideText;

  const WeekCardDisplay(
      {super.key,
      required this.title,
      required this.cardLeftSideText,
      required this.cardRightSideText,
      required this.counterLeftSideText,
      required this.counterRightSideText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultSlideCard(
            color: AtomicColors.white,
            elevation: 2,
            widget: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(AtomicPadding.minimalPadding),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(counterLeftSideText,
                              style: Theme.of(context).textTheme.titleLarge),
                          const SizedBox(height: AtomicPadding.minimalPadding),
                          Text(cardLeftSideText,
                              style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: SizedBox(
                          height: 40,
                          child: VerticalDivider(
                            color: AtomicColors.offWhite,
                            width: 1,
                            thickness: 1,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Text(counterRightSideText,
                              style: Theme.of(context).textTheme.titleLarge),
                          const SizedBox(height: AtomicPadding.minimalPadding),
                          Text(cardRightSideText,
                              style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(AtomicPadding.minimalPadding),
                  child: SizedBox(
                    height: 170,
                    child: ListView(
                      children: const [
                        WorkoutCard(
                            workoutTitle: 'Treino de hipertrofia',
                            time: '120min',
                            date: '18 de abr.'),
                        SizedBox(height: AtomicPadding.defaultPadding),
                        WorkoutCard(
                            workoutTitle: 'Treino de hipertrofia',
                            time: '143min',
                            date: '17 de abr.'),
                        SizedBox(height: AtomicPadding.defaultPadding),
                        SeeMoreButton()
                      ],
                    ),
                  ),
                ),
              ],
            ),
            width: double.infinity)
      ],
    );
  }
}
