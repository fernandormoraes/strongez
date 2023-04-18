import 'package:flutter_modular/flutter_modular.dart';
import 'package:strongez/app/domain/usecases/sign_in.dart';

class LoginPresenter {
  final SignIn signIn = Modular.get();

  void onPressLogin() {
    signIn.runUseCase();
  }
}
