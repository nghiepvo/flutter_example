import 'package:flutter/material.dart';
import 'package:flutter_example/constants/color.dart';
import 'package:flutter_example/extensions/size_context.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = context.getSize();
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.018),
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          buildDivide(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "OR",
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
          ),
          buildDivide(),
        ],
      ),
    );
  }

  Expanded buildDivide() {
    return const Expanded(
      child: Divider(
        color: Color(0xffD9D9D9),
        height: 1.5,
      ),
    );
  }
}
