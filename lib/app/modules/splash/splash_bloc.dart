import 'package:bloc/bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashBloc extends Bloc<void, void> {
  SplashBloc(super.initialState) {
    Modular.to.navigate('/login/');
  }

}