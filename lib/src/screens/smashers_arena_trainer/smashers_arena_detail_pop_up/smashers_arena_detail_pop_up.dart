import 'package:eatplayunwind/src/constants/sizes.dart';
import 'package:eatplayunwind/src/screens/smashers_arena_trainer/smashers_arena_detail_pop_up/smashers_arena_detail_pop_up_widgets/smashers_arena_detail_pop_up_description.dart';
import 'package:eatplayunwind/src/screens/smashers_arena_trainer/smashers_arena_detail_pop_up/smashers_arena_detail_pop_up_widgets/smashers_arena_detail_pop_up_other_staffs.dart';
import 'package:eatplayunwind/src/screens/smashers_arena_trainer/smashers_arena_detail_pop_up/smashers_arena_detail_pop_up_widgets/smashers_arena_detail_pop_up_personal_info.dart';
import 'package:eatplayunwind/src/screens/smashers_arena_trainer/smashers_arena_detail_pop_up/smashers_arena_detail_pop_up_widgets/smashers_arena_detail_pop_up_professional_info.dart';
import 'package:eatplayunwind/src/screens/smashers_arena_trainer/smashers_arena_detail_pop_up/smashers_arena_detail_pop_up_widgets/smashers_arena_detail_pop_up_widget_dp.dart';
import 'package:eatplayunwind/src/screens/smashers_arena_trainer/smashers_arena_trainer_data_model/smashers_arena_trainer_model.dart';
import 'package:flutter/material.dart';

class SmasherArenaTrainerDetailPopUp extends StatelessWidget {
  const SmasherArenaTrainerDetailPopUp({
    super.key,
    required this.size,
    required this.trainer,
  });

  final Size size;
  final int trainer;

  @override
  Widget build(BuildContext context) {
    final list = SmashersArenaTrainerModel.list;
    return SizedBox(
      height: size.height * 0.82,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //pop up trainer Dp
              SmasherArenaDetailPopUpWidgetDp(list: list, trainer: trainer),

              //pop up trainer personal detail
              SmashersArenaDetailsPopUpTrainerPersonalInfo(
                  list: list, trainer: trainer),
            ],
          ),

          //Trainer Professional Info
          SmasherArenaDetailPopUpWidgetTrainerProfessionalInfo(
              list: list, trainer: trainer),

          Text(
            "Other Staffs".toUpperCase(),
            style: Theme.of(context).textTheme.headline4,
          ),
          //trainer description
          SmasherArenaDetailPopUpWidgetTrainerDescription(
              size: size, list: list, trainer: trainer),

          const SizedBox(height: defaultHeight),
          GestureDetector(onTap: (){},
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.red),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Reserve Trainer".toUpperCase(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
