import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login/login_screen.dart';
import '../sign_up/sign_up_screen.dart';

class ExploreLoginOptionButtons extends StatelessWidget {
  const ExploreLoginOptionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(width: 10),
        Expanded(
            child: OutlinedButton(
          onPressed: () {
            Get.to(() => const LoginPage());
          },
          child: Text(
            "Login".toUpperCase(),
            style: Theme.of(context).textTheme.headline4,
          ),
        )),
        const SizedBox(
          width: 15,
        ),
        Expanded(
            child: ElevatedButton(
          onPressed: () {
            Get.to(() => const SignUpPage());
          },
          child: Text("Sign Up".toUpperCase(),
              style: Theme.of(context).textTheme.headline4),
        )),
        const SizedBox(width: 10),
      ],
    );
  }
}
