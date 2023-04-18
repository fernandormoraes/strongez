import 'package:flutter/material.dart';
import 'package:strongez/app/design/molecules/default_input_decoration.dart';

class DefaultTextField extends StatelessWidget{
  final Icon? icon;

  const DefaultTextField({super.key, this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 42, child: TextFormField(decoration: DefaultInputDecoration.defaultDecoration(icon)));
  }

}