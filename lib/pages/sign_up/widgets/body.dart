import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_example/constants/color.dart';
import 'package:flutter_example/extensions/size_context.dart';
import 'package:flutter_example/pages/login/login_page.dart';
import 'package:flutter_example/pages/sign_up/widgets/background.dart';
import 'package:flutter_example/pages/sign_up/widgets/or_divider.dart';
import 'package:flutter_example/widgets/already_have_an_account_check.dart';
import 'package:flutter_example/widgets/rounded_button.dart';
import 'package:flutter_example/widgets/rounded_password_field.dart';
import 'package:flutter_example/widgets/rounded_text_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = context.getSize();
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.1,
            ),
            const Text(
              'REGISTER',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SizedBox(
              height: size.height * 0.8,
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(
                  left: size.width * 0.1,
                  right: size.width * 0.1,
                ),
                children: <Widget>[
                  SvgPicture.asset(
                    'assets/icons/signup.svg',
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
                    hitText: "Password",
                    onChanged: (value) {
                      log(value);
                    },
                  ),
                  RoundedPasswordField(
                    hitText: "Confirm Password",
                    onChanged: (value) {
                      log(value);
                    },
                  ),
                  RoundedTextField(
                    hitText: "First Name",
                    icon: Icons.person,
                    color: kPrimaryColor,
                    onChanged: (value) {
                      log(value);
                    },
                  ),
                  RoundedTextField(
                    hitText: "Last Name",
                    icon: Icons.person,
                    color: kPrimaryColor,
                    onChanged: (value) {
                      log(value);
                    },
                  ),
                  RoundedButton(
                    text: "SIGN UP",
                    press: () {},
                  ),
                  SizedBox(
                    height: size.height * 0.006,
                  ),
                  AlreadyHaveAnAccountCheck(
                    isLogin: false,
                    onTab: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                  ),
                  const OrDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocialButton(
                        iconPath: 'assets/icons/facebook.svg',
                        onTab: () {},
                      ),
                      SocialButton(
                        iconPath: 'assets/icons/twitter.svg',
                        onTab: () {},
                      ),
                      SocialButton(
                        iconPath: 'assets/icons/google-plus.svg',
                        onTab: () {},
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final String iconPath;
  final Function()? onTab;
  const SocialButton({
    super.key,
    required this.iconPath,
    this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconPath,
          width: 20,
          height: 20,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
