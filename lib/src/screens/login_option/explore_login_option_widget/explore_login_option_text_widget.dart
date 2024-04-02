import 'package:flutter/material.dart';


class ExploreLoginOptionTextWidget extends StatelessWidget {
  const ExploreLoginOptionTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome Mate",
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          "Lets Roll Out",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}