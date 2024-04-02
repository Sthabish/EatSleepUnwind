import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrainerGenreWidget extends StatelessWidget {
  const TrainerGenreWidget({
    super.key,
    required this.genreList,
  });

  final List<String> genreList;

  @override
  Widget build(BuildContext context) {
    //dot
    Widget dot = Container(
      width: 7.5,
      height: 7.5,
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(genreList.length, (index) {
        if (index < genreList.length - 1) {
          return Row(
            children: [
              Text(
                genreList[index].toUpperCase(),
                style: GoogleFonts.josefinSans(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              dot,
            ],
          );
        } else {
          return Text(
            genreList[index].toUpperCase(),
            style: GoogleFonts.josefinSans(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          );
        }
      }),
    );
  }
}
