import 'package:flutter/material.dart';

import '../../smashers_arena_trainer_data_model/smashers_arena_trainer_model.dart';

class TrainerImageWidget extends StatelessWidget {
  const TrainerImageWidget({
    super.key,
    required this.list,
    required this.trainer,
    required this.size,
  });

  final List<SmashersArenaTrainerModel> list;
  final int trainer;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Image(
        image: NetworkImage(list[trainer].trainerImage),
        width: size.width * 0.5,
        height: size.height * 0.35,
        fit: BoxFit.cover,
      ),
    );
  }
}
