import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../smashers_arena_trainer_data_model/smashers_arena_trainer_model.dart';


class TrainerHeadNameWidget extends StatelessWidget {
  const TrainerHeadNameWidget({
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
    return SizedBox(
      height: size.height * 0.10,
      // width: size.width / 2,
      child: Align(
        alignment: Alignment.center,
        child: Text(textAlign: TextAlign.center,
          list[trainer].trainerName.toUpperCase(),
          style: GoogleFonts.shojumaru(
            color: Colors.white,
            fontSize: 38,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}