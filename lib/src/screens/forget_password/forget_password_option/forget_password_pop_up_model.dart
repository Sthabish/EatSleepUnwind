import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/sizes.dart';
import '../forget_password_mail/forget_password_mail.dart';
import '../forget_password_phone_no/forget_password_phone_no.dart';
import 'forget_password_button.dart';

class ForgetPasswordPopUp {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      builder: (context) => Container(
        padding: const EdgeInsets.all(defaultPadding),
        child: SizedBox(
          height: 330,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forget Password".toUpperCase(),
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(height: defaultHeight),
              Text(
                "Select one of the options given below to reset your password",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: defaultHeight + 10),
              ForgetPasswordBtnWidget(
                btnIcon: Icons.mark_email_read_outlined,
                title: "E-Mail",
                subTitle: "Reset via E-Mail verification",
                onTapped: () {
                  Navigator.pop(context);
                  Get.to(() => const ForgetPasswordMail());
                },
              ),
              const SizedBox(height: defaultHeight),
              ForgetPasswordBtnWidget(
                btnIcon: Icons.mobile_friendly_outlined,
                title: "Phone Number",
                subTitle: "Reset via Phone Number verification",
                onTapped: () {
                  Navigator.pop(context);
                  Get.to(() => const ForgetPasswordPhone());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
