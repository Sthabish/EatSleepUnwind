import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget({
    required this.btnIcon,
    required this.title,
    required this.subTitle,
    required this.onTapped,
    super.key,
  });

  final IconData btnIcon;
  final String title, subTitle;
  final VoidCallback onTapped;

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isDarkMode ? AppPrimaryColor : AppSecondaryColor),
        child: Row(children: [
          Icon(
            btnIcon,
            size: 60,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.headline5,maxLines: 2,
              )
            ],
          )
        ]),
      ),
    );
  }
}
