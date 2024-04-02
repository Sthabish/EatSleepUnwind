import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';
import '../otp_screen.dart';
import 'forget_password_phone_no_head.dart';

class ForgetPasswordPhone extends StatelessWidget {
  const ForgetPasswordPhone({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? AppPrimaryColor : AppSecondaryColor,
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          padding: const EdgeInsets.all(defaultPadding + 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ForgetPasswordPhoneHeadWidget(size: size),
              const SizedBox(height: defaultHeight),
              Form(
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.numbers,
                        ),
                        helperText: "Please enter your valid Phone Number",
                        helperStyle: Theme.of(context).textTheme.bodyText1,
                        labelText: "Phone Number",
                        hintText: "Phone Number",
                        border: const OutlineInputBorder()),
                  ),
                  const SizedBox(height: defaultHeight + 5),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const OTPScreen());
                      },
                      child: Text(
                        "NEXT",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
