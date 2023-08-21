import 'package:flutter/material.dart';
import 'package:flutter_example/constants/color.dart';
import 'package:flutter_example/extensions/size_context.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget? child;

  const TextFieldContainer({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = context.getSize();
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(27),
      ),
      child: child,
    );
  }
}
