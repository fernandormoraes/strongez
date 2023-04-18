import 'package:flutter/material.dart';
import 'package:strongez/app/design/atoms/atomic_colors.dart';
import 'package:strongez/app/design/atoms/atomic_radius.dart';

class DefaultButton extends StatelessWidget {
  final void Function()? onPressed;

  const DefaultButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: AtomicColors.lowBlue,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AtomicRadius.defaultRadius)),
      child: Center(
          child: Text(
        'Login',
        style: Theme.of(context)
            .textTheme
            .labelLarge!
            .copyWith(color: AtomicColors.white),
      )),
    );
  }
}
