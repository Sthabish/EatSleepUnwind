import 'package:flutter/material.dart';
import '../../smashers_arena_trainer/smashers_arena_trainer_data_model/smashers_arena_trainer_model.dart';

class SmashArenaDashboardSmallScrollerWidget extends StatelessWidget {
  const SmashArenaDashboardSmallScrollerWidget({
    super.key,
    required this.colour1,
    required this.txtTheme,
  });

  final Color colour1;
  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = SmashersArenaTrainerModel.list;
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            height: 60,
            width: 200,
            child: Row(children: [
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: colour1),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: NetworkImage(list[index].trainerImage),
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      list[index].trainerName.toUpperCase(),
                      style: txtTheme.headline3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      list[index].trainerCategory,
                      style: txtTheme.headline5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
