import 'package:flutter/material.dart';
import 'package:flutter_example/widgets/text_field_container.dart';

class RoundedTextField extends StatelessWidget {
  final String? hitText;
  final IconData? icon;
  final Color? color;
  final ValueChanged<String>? onChanged;

  const RoundedTextField({
    super.key,
    this.hitText,
    this.icon,
    this.color,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hitText,
          icon: Icon(
            icon,
            color: color,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
