import 'package:flutter/material.dart';
import 'package:strongez/app/design/atoms/atomic_colors.dart';
import 'package:strongez/app/design/atoms/atomic_radius.dart';

class DefaultInputDecoration{
  static InputDecoration defaultDecoration(Icon? icon){
    return InputDecoration(
      prefixIcon: icon,
      filled: true,
      fillColor: AtomicColors.offWhite,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(AtomicRadius.defaultRadius), borderSide: const BorderSide(style: BorderStyle.none)),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(AtomicRadius.defaultRadius), borderSide: const BorderSide(style: BorderStyle.none)),
    );
  }
}