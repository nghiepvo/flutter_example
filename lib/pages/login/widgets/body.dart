import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_example/constants/color.dart';
import 'package:flutter_example/extensions/size_context.dart';
import 'package:flutter_example/pages/login/widgets/background.dart';
import 'package:flutter_example/widgets/rounded_password_field.dart';
import 'package:flutter_example/widgets/rounded_text_field.dart';
import 'package:flutter_example/pages/sign_up/sign_update_page.dart';
import 'package:flutter_example/widgets/already_have_an_account_check.dart';
import 'package:flutter_example/widgets/rounded_button.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = context.getSize();
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'LOGIN',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.35,
            ),
            RoundedTextField(
              hitText: "Your Email",
              icon: Icons.person,
              color: kPrimaryColor,
              onChanged: (value) {
                log(value);
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                log(value);
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              isLogin: true,
              onTab: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignUpPage();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
