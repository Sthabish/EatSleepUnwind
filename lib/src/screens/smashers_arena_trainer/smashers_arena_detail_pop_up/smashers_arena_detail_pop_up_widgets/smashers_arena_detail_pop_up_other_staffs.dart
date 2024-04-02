
import 'package:eatplayunwind/src/constants/sizes.dart';
import 'package:eatplayunwind/src/screens/smashers_arena_trainer/smashers_arena_trainer_staff_model/smashers_arena_trainer_staff_model.dart';
import 'package:flutter/material.dart';

class SmashersArenaDetailPopUpOtherStaffs extends StatelessWidget {
  const SmashersArenaDetailPopUpOtherStaffs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final list1 = SmashersArenaTrainerStaffModel.list;
    return Row(
      children: [
        SizedBox(
          height: 100,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: list1.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index) =>
                Container(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: AssetImage(list1[index].staffImage),
                          width: 55,
                          height: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        list1[index].name,
                        style: Theme.of(context).textTheme.headline4!.apply(
                          color: Colors.orangeAccent,
                        ),
                      ),
                      Text(
                        list1[index].staffDesignation,
                        style: Theme.of(context).textTheme.headline5!.apply(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),

          ),
        ),
      ],
    );
  }
}