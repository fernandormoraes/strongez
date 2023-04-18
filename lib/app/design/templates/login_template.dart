import 'package:flutter/material.dart';
import 'package:strongez/app/design/atoms/atomic_padding.dart';
import 'package:strongez/app/design/organisms/default_button.dart';
import 'package:strongez/app/design/organisms/default_text_field.dart';

class LoginTemplate extends StatelessWidget {
  final void Function()? onLoginPressed;

  const LoginTemplate({super.key, required this.onLoginPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const DefaultTextField(
              icon: Icon(Icons.supervised_user_circle_rounded)),
          const SizedBox(
            height: AtomicPadding.minimalPadding,
          ),
          const DefaultTextField(icon: Icon(Icons.password_outlined)),
          DefaultButton(onPressed: onLoginPressed),
          const SizedBox(
            height: AtomicPadding.minimalPadding,
          ),
          const Align(
              alignment: Alignment.centerRight,
              child: Text('Ou clique aqui, e crie uma conta')),
        ],
      ),
    );
  }
}
