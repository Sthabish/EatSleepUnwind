import 'package:eatplayunwind/src/constants/sizes.dart';
import 'package:eatplayunwind/src/screens/smashers_arena_trainer/smashers_arena_detail_pop_up/smashers_arena_detail_pop_up_widgets/smashers_arena_detail_pop_up_other_staffs.dart';
import 'package:eatplayunwind/src/screens/smashers_arena_trainer/smashers_arena_trainer_data_model/smashers_arena_trainer_model.dart';
import 'package:flutter/material.dart';

class SmasherArenaDetailPopUpWidgetTrainerDescription extends StatelessWidget {
  const SmasherArenaDetailPopUpWidgetTrainerDescription({
    super.key,
    required this.size,
    required this.list,
    required this.trainer,
  });

  final Size size;
  final List<SmashersArenaTrainerModel> list;
  final int trainer;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: size.height * 0.15,
        child: ListView(
          children: [
            Text(
              list[trainer].trainerBriefing,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const SizedBox(height: defaultHeight),
            Text(
              list[trainer].trainerBriefing1,
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: defaultHeight),
            //other staffs
            const SmashersArenaDetailPopUpOtherStaffs(),
          ],
        ),
      ),
    );
  }
}