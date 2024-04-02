import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';
import '../otp_screen.dart';
import 'forget_password_mail_head_widget.dart';

class ForgetPasswordMail extends StatelessWidget {
  const ForgetPasswordMail({super.key});

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
              ForgetPasswordEmailHeadWidget(size: size),
              const SizedBox(height: defaultHeight),
              Form(
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email,
                        ),
                        helperText: "Please enter your valid E-Mail id",
                        helperStyle: Theme.of(context).textTheme.bodyText1,
                        labelText: "E-Mail",
                        hintText: "E-Mail",
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
