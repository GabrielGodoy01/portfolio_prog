import 'package:flutter/material.dart';

class TextFieldCustomWidget extends StatelessWidget {
  final String labelText;
  final IconData iconData;
  const TextFieldCustomWidget({Key? key, required this.labelText, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
        labelText: labelText,
        prefixIcon: Icon(iconData),
      ),
    );
  }
}
