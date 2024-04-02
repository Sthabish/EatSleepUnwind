import 'package:flutter/material.dart';
import '../smashers_arena_trainer_data_model/smashers_arena_trainer_model.dart';

class SmasherTrainerBackgroundImage extends StatelessWidget {
  const SmasherTrainerBackgroundImage({
    super.key,
    required this.trainer,
  });

  final int trainer;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final list = SmashersArenaTrainerModel.list;
    return ListView.builder(
      itemCount: 1,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: -size.width / 5,
                right: -size.width / 5,
                child: Image(
                  image: AssetImage(list[trainer].trainerBgImage),
                  fit: BoxFit.cover,
                ),
              ),
              Container(color: Colors.black.withOpacity(0.2)),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.2),
                      Colors.black.withOpacity(0.85),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.5, 0.9],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
