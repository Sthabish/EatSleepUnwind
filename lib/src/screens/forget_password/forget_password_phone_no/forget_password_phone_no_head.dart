
import 'package:flutter/material.dart';

import '../../../constants/image.dart';
import '../../../constants/sizes.dart';

class ForgetPasswordPhoneHeadWidget extends StatelessWidget {
  const ForgetPasswordPhoneHeadWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: const AssetImage(mobileOtp),
          height: size.height * 0.25,
        ),
        const SizedBox(height: defaultHeight + 20),
        Text(
          "Verification via Phone Number".toUpperCase(),
          style: Theme.of(context).textTheme.headline3,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: defaultHeight - 3),
        Text(
          "An OTP will be been sent to your Phone Number",
          style: Theme.of(context).textTheme.headline4,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}