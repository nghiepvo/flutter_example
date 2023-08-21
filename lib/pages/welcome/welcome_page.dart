import 'package:flutter/material.dart';
import 'package:flutter_example/pages/welcome/widgets/body.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
