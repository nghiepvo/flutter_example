import 'package:flutter/material.dart';
import 'package:flutter_example/constants/color.dart';
import 'package:flutter_example/widgets/text_field_container.dart';

class RoundedPasswordField extends StatefulWidget {
  final String? hitText;
  final ValueChanged<String>? onChanged;

  const RoundedPasswordField({
    super.key,
    this.onChanged,
    this.hitText,
  });

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _obscuText = false;

  void _onPressed() {
    setState(() {
      _obscuText = !_obscuText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: _obscuText,
        onChanged: widget.onChanged,
        validator: (value) {
          return value != null && value.length < 6
              ? 'Password too short.'
              : null;
        },
        decoration: InputDecoration(
          hintText: widget.hitText,
          icon: const Icon(
            Icons.password_outlined,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            onPressed: _onPressed,
            icon: const Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
