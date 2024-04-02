import 'package:flutter/material.dart';

import '../../../constants/image.dart';


class LoginFormHeader extends StatelessWidget {
  const LoginFormHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage(LoginScreen),
          height: size.height * 0.25,
        ),
        Text(
          "Welcome back user".toUpperCase(),
          style: Theme.of(context).textTheme.headline1,
          textAlign: TextAlign.center,
        ),
        Text(
          "Lets resume your Schedule",
          style: Theme.of(context).textTheme.headline4,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}