import 'package:bloc/bloc.dart';

enum LoginEvent { increment }

class LoginBloc extends Bloc<LoginEvent, int> {
  LoginBloc() : super(0);
}
