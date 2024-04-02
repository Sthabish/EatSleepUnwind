import 'package:flutter/material.dart';
import '../../../constants/image.dart';

class ExploreLoginOptionImage extends StatelessWidget {
  const ExploreLoginOptionImage({
    super.key,
    required this.ht,
  });

  final double ht;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: ht * 0.6,
        child: const Image(image: AssetImage(LoginOptionScreen)));
  }
}