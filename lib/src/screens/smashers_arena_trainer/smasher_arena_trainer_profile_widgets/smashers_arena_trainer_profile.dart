import 'package:eatplayunwind/src/screens/smashers_arena_trainer/smashers_arena_detail_pop_up/smashers_arena_detail_pop_up.dart';
import 'package:flutter/material.dart';
import '../../../constants/sizes.dart';
import '../smashers_arena_trainer_data_model/smashers_arena_trainer_model.dart';
import 'smasher_arena_trainer_individual_component_widget/trainer_genre_widget.dart';
import 'smasher_arena_trainer_individual_component_widget/trainer_head_name_widget.dart';
import 'smasher_arena_trainer_individual_component_widget/trainer_image_widget.dart';
import 'smasher_arena_trainer_individual_component_widget/trainer_rating_widget.dart';
import 'smasher_arena_trainer_individual_component_widget/trainer_reserve_button.dart';

//To center the trainer list view
// double trainerItemWidth = size.width / 2 + 48;

class SmashersArenaTrainerProfile extends StatelessWidget {
  const SmashersArenaTrainerProfile({
    super.key,
    required this.trainerItemWidth,
    required this.trainer,
  });

  final double trainerItemWidth;
  final int trainer;

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    final list = SmashersArenaTrainerModel.list;
    final genreList = list[trainer].genre;
    final rating = list[trainer].rating;

    return Container(
      padding: EdgeInsets.zero,
      height: size.height * 0.8,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 1,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),

                //trainer header name
                TrainerHeadNameWidget(size: size, list: list, trainer: trainer),
                const SizedBox(height: defaultHeight),

                //trainer genre
                TrainerGenreWidget(genreList: genreList),
                const SizedBox(height: defaultHeight + 5),

                //trainer star rating
                TrainerRatingWidget(rating: rating),
                const SizedBox(height: defaultHeight + 5),

                //reserve button
                TrainerReserveButton(size: size),
                const SizedBox(height: defaultHeight + 10),

                //trainer image
                TrainerImageWidget(list: list, trainer: trainer, size: size),
                SizedBox(height: size.height * 0.02),

                //trainer detail pop up
                TrainerDetailPopUp(size: size, trainer: trainer, txtTheme: txtTheme),
                SizedBox(height: size.height * 0.01),
              ],
            ),
          );
        },
      ),
    );
  }
}

class TrainerDetailPopUp extends StatelessWidget {
  const TrainerDetailPopUp({
    super.key,
    required this.size,
    required this.trainer,
    required this.txtTheme,
  });

  final Size size;
  final int trainer;
  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),),),
          builder: (context) => Container(
            height: size.height,
            padding: const EdgeInsets.all(defaultPadding),
            child: SmasherArenaTrainerDetailPopUp(size: size, trainer: trainer),
          ),
        );
      },
      child: Text("Description",
          style: txtTheme.headline3!.apply(color: Colors.white)),
    );
  }
}

