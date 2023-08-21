import 'package:flutter/material.dart';
import 'package:flutter_example/constants/color.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool? isLogin;
  final Function()? onTab;
  const AlreadyHaveAnAccountCheck({
    super.key,
    this.isLogin = true,
    this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          isLogin == true
              ? "Don't you have an account? "
              : "Do you have an account? ",
          style: const TextStyle(
            color: kPrimaryColor,
          ),
        ),
        GestureDetector(
          onTap: onTab,
          child: Text(
            isLogin == true ? 'Sign Up' : 'Sign In',
            style: const TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
