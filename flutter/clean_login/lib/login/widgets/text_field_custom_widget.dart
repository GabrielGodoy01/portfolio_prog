import 'package:flutter/material.dart';

class TextFieldCustomWidget extends StatelessWidget {
  final String labelText;
  final IconData iconData;
  final bool obscureText;
  final TextEditingController controller;

  const TextFieldCustomWidget(
      {Key? key,
      required this.labelText,
      required this.iconData,
      this.obscureText = false,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
        labelText: labelText,
        prefixIcon: Icon(iconData),
      ),
    );
  }
}
