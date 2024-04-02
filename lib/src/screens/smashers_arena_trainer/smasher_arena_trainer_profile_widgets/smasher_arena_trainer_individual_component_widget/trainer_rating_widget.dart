import 'package:flutter/material.dart';

class TrainerRatingWidget extends StatelessWidget {
  const TrainerRatingWidget({super.key, required this.rating});

  final double rating;

  @override
  Widget build(BuildContext context) {

    //star
    Widget star(bool fill) {
      return Icon(
        Icons.star_border_rounded,
        size: 18,
        color: fill ? Colors.orangeAccent : Colors.grey,
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        if (index < (rating).round()) {
          return star(true);
        } else {
          return star(false);
        }
      }),
    );
  }
}
