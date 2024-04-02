import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';
import '../../forget_password/forget_password_option/forget_password_pop_up_model.dart';
import '../../smashers_arena_dashboard/smash_arena_dashboard.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: defaultHeight - 5,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  labelText: "E-Mail",
                  hintText: "E-Mail",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: defaultHeight),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.fingerprint,
                  ),
                  labelText: "Password",
                  hintText: "Password",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                  )),
            ),
            const SizedBox(height: defaultHeight - 5),

            //forget button
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordPopUp.buildShowModalBottomSheet(context);
                },
                child: const Text(
                  "Forgot Password ?",
                  style: TextStyle(color: AppWhiteColor),
                ),
              ),
            ),

            //Login button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const SmashArenaDashboard());
                },
                child: Text(
                  "Login".toUpperCase(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
