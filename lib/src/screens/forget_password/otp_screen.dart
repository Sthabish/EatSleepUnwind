import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: isDarkMode ? AppPrimaryColor : AppSecondaryColor,
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "CO\nDE",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 85),
            ),
            Text(
              "Verification",
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: defaultHeight + 20),
            Text(
              "Enter the OTP message " + "\nsentOTP@EmailOrPhone.com",
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: defaultHeight + 10),
            OtpTextField(
              numberOfFields: 6,
              fillColor: isDarkMode
                  ? Colors.white.withOpacity(0.1)
                  : Colors.deepPurple.withOpacity(0.15),
              filled: true,
              onSubmit: (code) {
                print("OTP = > $code");
              },
            ),
            const SizedBox(height: defaultHeight + 10),
            SizedBox(
              width: size.width - 122,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "NEXT",
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
