import 'package:flutter/material.dart';

import '../../../constants/image.dart';


class SignUpFormHeader extends StatelessWidget {
  const SignUpFormHeader({
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
          image: const AssetImage(SignUpScreen),
          height: size.height * 0.25,
        ),
        Text(
          "Hey new user".toUpperCase(),
          style: Theme.of(context).textTheme.headline1,
          textAlign: TextAlign.center,
        ),
        Text(
          "Lets start by creating a new account for you",
          style: Theme.of(context).textTheme.headline4,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}