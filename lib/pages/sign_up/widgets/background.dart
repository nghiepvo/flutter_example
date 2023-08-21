import 'package:flutter/material.dart';
import 'package:flutter_example/extensions/size_context.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = context.getSize();
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(
              'assets/images/signup_top.png',
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/main_bottom.png',
              width: size.width * 0.25,
            ),
          ),
          child
        ],
      ),
    );
  }
}
