import 'package:flutter/material.dart';
import '../../../constants/sizes.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
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
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Full Name"),
                hintText: "Full Name",
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: defaultHeight),
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Phone Number"),
                hintText: "Phone Number",
                prefixIcon: Icon(Icons.numbers),
              ),
            ),
            const SizedBox(height: defaultHeight),
            TextFormField(
              decoration: const InputDecoration(
                label: Text("E-mail"),
                hintText: "E-mail",
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: defaultHeight),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.fingerprint,
                  ),
                  label: Text("Password"),
                  hintText: "Password",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined)),
            ),
            const SizedBox(height: defaultHeight),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Sign Up".toUpperCase(),
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
