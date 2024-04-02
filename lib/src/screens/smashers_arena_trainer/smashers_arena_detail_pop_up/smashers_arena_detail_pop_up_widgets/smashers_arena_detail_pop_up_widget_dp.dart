import 'package:eatplayunwind/src/screens/smashers_arena_trainer/smashers_arena_trainer_data_model/smashers_arena_trainer_model.dart';
import 'package:flutter/cupertino.dart';

class SmasherArenaDetailPopUpWidgetDp extends StatelessWidget {
  const SmasherArenaDetailPopUpWidgetDp({
    super.key,
    required this.list,
    required this.trainer,
  });

  final List<SmashersArenaTrainerModel> list;
  final int trainer;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image(
        image: NetworkImage(list[trainer].trainerImage),
        width: 150,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}