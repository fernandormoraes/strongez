import 'package:flutter_modular/flutter_modular.dart';
import 'package:strongez/app/design/atoms/atomic_colors.dart';
import 'package:strongez/app/design/atoms/atomic_padding.dart';
import 'package:strongez/app/design/templates/login_template.dart';
import 'package:strongez/app/modules/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:strongez/app/modules/login/login_presenter.dart';

class LoginPage extends StatelessWidget {
  final LoginBloc bloc = Modular.get();
  final LoginPresenter presenter = Modular.get();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AtomicColors.white,
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.all(AtomicPadding.defaultPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: AtomicPadding.defaultPadding),
                    Text('Bem vindo(a) ao Strongez.',
                        style: Theme.of(context).textTheme.displaySmall),
                    const SizedBox(
                      height: AtomicPadding.minimalPadding,
                    ),
                    Text('Acesse e comece a bater metas e objetivos',
                        style: Theme.of(context).textTheme.headlineSmall),
                    const SizedBox(
                      height: AtomicPadding.minimalPadding,
                    ),
                    const SizedBox(
                      height: AtomicPadding.doublePadding,
                    ),
                    LoginTemplate(
                      onLoginPressed: () {
                        presenter.onPressLogin();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
