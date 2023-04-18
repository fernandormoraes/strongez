import 'package:strongez/app/domain/usecases/sign_in.dart';
import 'package:strongez/app/modules/login/login_page.dart';
import 'package:strongez/app/modules/login/login_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:strongez/app/modules/login/login_presenter.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginBloc()),
    Bind.lazySingleton((i) => SignIn()),
    Bind.lazySingleton((i) => LoginPresenter())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LoginPage()),
  ];
}
