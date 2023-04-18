import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:strongez/app/design/atoms/atomic_colors.dart';
import 'package:strongez/app/design/atoms/atomic_padding.dart';
import 'package:strongez/app/design/organisms/slide_card_display.dart';

import 'counter_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final CounterCubit _counterCubit = Modular.get();

  @override
  void dispose() {
    _counterCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: AtomicColors.lowBlue,
            height: 190,
          ),
          Padding(
            padding: const EdgeInsets.all(AtomicPadding.defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: AtomicPadding.defaultPadding),
                    Row(
                      children: [
                        const Icon(Icons.account_circle,
                            size: 56, color: AtomicColors.darkestBlue),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                                    text: 'Olá, ',
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                    children: [
                                  TextSpan(
                                    text: 'Fernando',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  )
                                ])),
                            const SizedBox(height: AtomicPadding.labelPadding),
                            Row(
                              children: [
                                Text('Acessar perfil',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(fontWeight: FontWeight.w400)),
                                const Icon(
                                  Icons.navigate_next_rounded,
                                  size: 20,
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: AtomicPadding.doublePadding),
                    SizedBox(
                      height: 80,
                      child: ListView(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: const [
                            SlideCardDisplay(
                                width: 140,
                                title: 'Metas',
                                subText: 'Definidas',
                                counterText: '2'),
                            SizedBox(
                              width: AtomicPadding.defaultPadding,
                            ),
                            SlideCardDisplay(
                                width: 140,
                                title: 'Treinos',
                                subText: 'Pendentes',
                                counterText: '1'),
                            SizedBox(
                              width: AtomicPadding.defaultPadding,
                            ),
                            SlideCardDisplay(
                                width: 140,
                                title: 'Extras',
                                subText: 'Pendentes',
                                counterText: '3'),
                          ]),
                    ),
                    const SizedBox(height: AtomicPadding.defaultPadding),
                    Row(
                      children: [
                        Text(
                          'Resumo da semana',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const Icon(
                          Icons.navigate_next_rounded,
                          size: 30,
                        )
                      ],
                    ),
                    const SizedBox(height: AtomicPadding.defaultPadding),
                    Row(
                      children: [
                        Text('Acompanhamento',
                            style: Theme.of(context).textTheme.headlineSmall),
                        const Icon(
                          Icons.navigate_next_rounded,
                          size: 30,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
