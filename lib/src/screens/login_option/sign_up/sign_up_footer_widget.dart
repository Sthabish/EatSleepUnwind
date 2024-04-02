import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/colors.dart';
import '../../../constants/image.dart';
import '../../../constants/sizes.dart';
import '../login/login_screen.dart';
import '../sign_up/sign_up_screen.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "OR",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(height: defaultHeight + 5),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage(google),
              width: 20,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUpPage()),
              );
            },
            label: Text(
              "Sign-In with Google",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ),
        const SizedBox(height: defaultHeight),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage(facebook),
              width: 20,
            ),
            onPressed: () {},
            label: Text(
              "Sign-In with FaceBook",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Get.to(() => const LoginPage());
          },
          child: Text.rich(
            TextSpan(
              text: "Don't have an Account ? ".toUpperCase(),
              style: const TextStyle(color: Colors.white),
              children: [
                TextSpan(
                  text: "Login",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: isDarkMode ? AppSecondaryColor : AppPrimaryColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
