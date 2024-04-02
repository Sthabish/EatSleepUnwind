import 'package:flutter/material.dart';

import '../../../constants/image.dart';
import '../../../constants/sizes.dart';

class SmashArenaDashboardTutorialWidget extends StatelessWidget {
  const SmashArenaDashboardTutorialWidget({
    super.key,
    required this.colour2,
    required this.txtTheme,
  });

  final Color colour2;
  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: colour2),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Icon(
                        Icons.bookmark,
                        size: 90,
                      ),
                    ),
                    Flexible(
                      child: SizedBox(
                        height: 100,
                        child: Image(image: AssetImage(smashArenaTrainer2)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultHeight,
                ),
                Text(
                  "Beginners cycle",
                  style: txtTheme.headline3,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  "Beginners regular routine",
                  style: txtTheme.headline5,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: AppDashboardPadding,
        ),
        Expanded(
            child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: colour2),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Icon(
                          Icons.play_circle,
                          size: 90,
                        ),
                      ),
                      Flexible(
                        child: SizedBox(
                          height: 100,
                          child: Image(image: AssetImage(smashArenaPlayer3)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: defaultHeight,
                  ),
                  Text(
                    "Watch Basic Tutorial",
                    style: txtTheme.headline3,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Text(
                    "watch short run Through",
                    style: txtTheme.headline5,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  )
                ],
              ),
            )
          ],
        ))
      ],
    );
  }
}
