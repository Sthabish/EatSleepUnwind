import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import 'smash_arena_dashboard_model/smash_arena_dashboard_arena_slide_model.dart';

class SmashArenaDashboardArenaSlideWidget extends StatelessWidget {
  const SmashArenaDashboardArenaSlideWidget({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = SmashArenaDashboardArenaSlideWidgetModel.list;
    return SizedBox(
      height: 180,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: SizedBox(
            width: 280,
            height: 180,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppDashCardBgColor),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          list[index].smashArenasName.toUpperCase(),
                          style: txtTheme.headline3,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Flexible(
                          child: Image(
                        image: AssetImage(list[index].smashArenasImage),
                        height: 110,
                      ))
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: list[index].onPress,
                      child: Text(
                        list[index].smashArenasPrice,
                        style: txtTheme.headline4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
