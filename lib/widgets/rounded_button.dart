import 'package:flutter/material.dart';
import 'package:flutter_example/constants/color.dart';
import 'package:flutter_example/extensions/size_context.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final void Function()? press;
  final Color? color, textColor;

  const RoundedButton({
    super.key,
    required this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = context.getSize();
    return Container(
      width: size.width * 0.8,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 40,
          ),
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
