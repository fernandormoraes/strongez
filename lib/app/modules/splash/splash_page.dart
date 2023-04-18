import 'package:flutter_modular/flutter_modular.dart';
import 'package:strongez/app/modules/splash/splash_bloc.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  final SplashBloc bloc = Modular.get();

  SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Strongez'),
      ),
    );
  }
}