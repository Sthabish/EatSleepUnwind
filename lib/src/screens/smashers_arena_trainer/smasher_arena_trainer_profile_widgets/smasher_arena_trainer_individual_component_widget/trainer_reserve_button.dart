import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrainerReserveButton extends StatelessWidget {
  const TrainerReserveButton({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.45,
      height: size.height * 0.045,
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          textAlign: TextAlign.center,
          "Reserve Trainer".toUpperCase(),
          style: GoogleFonts.exo2(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
