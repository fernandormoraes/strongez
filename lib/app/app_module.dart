import 'package:flutter_modular/flutter_modular.dart';
import 'package:strongez/app/modules/login/login_module.dart';
import 'package:strongez/app/modules/splash/splash_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: SplashModule()),
    ModuleRoute('/login', module: LoginModule()),
    ModuleRoute('/home', module: HomeModule())
  ];

}