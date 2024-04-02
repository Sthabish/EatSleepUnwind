import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/colors.dart';
import '../../../constants/image.dart';
import '../../../constants/sizes.dart';
import '../sign_up/sign_up_screen.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
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
                // Get.to(() => const DrawerAssemble());
              },
              label: Text(
                "Sign-In with Google",
                style: Theme.of(context).textTheme.headline4,
              )),
        ),
        const SizedBox(height: defaultHeight),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage(facebook),
              width: 20,
            ),
            onPressed: () {
              // Get.to(() => const Dashboard());
            },
            label: Text(
              "Sign-In with FaceBook",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Get.to(() => const SignUpPage());
          },
          child: Text.rich(
            TextSpan(
              text: "Don't have an Account ? ".toUpperCase(),
              style: const TextStyle(color: Colors.white),
              children: [
                TextSpan(
                  text: "Sign-In",
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
