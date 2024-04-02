
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/sizes.dart';
import '../../constants/text.dart';
import '../smashers_arena_trainer/smashers_arena_trainer_profile/beginner_smaher_arena_trainer_profile.dart';
import 'smash_arena_dashboard_widgets/smash_arena_dashboard_arena_slide_widget.dart';
import 'smash_arena_dashboard_widgets/smash_arena_dashboard_scrollable_event.dart';
import 'smash_arena_dashboard_widgets/smash_arena_dashboard_search_widget.dart';
import 'smash_arena_dashboard_widgets/smash_arena_dashboard_small_scroller_widget.dart';
import 'smash_arena_dashboard_widgets/smash_arena_dashboard_tutorial_widget.dart';

class SmashersArenaDashboardWidget extends StatefulWidget {
  const SmashersArenaDashboardWidget({
    super.key,
    required this.txtTheme,
    required this.colour1,
    required this.colour2,
    required this.colour3,
    required this.size,
  });

  final TextTheme txtTheme;
  final Color colour1;
  final Color colour2;
  final Color colour3;
  final Size size;

  @override
  State<SmashersArenaDashboardWidget> createState() =>
      _SmashersArenaDashboardWidgetState();
}

class _SmashersArenaDashboardWidgetState
    extends State<SmashersArenaDashboardWidget> {
  double xOffSet = 0;
  double yOffSet = 0;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffSet, yOffSet, 0)
        ..scale(isDrawerOpen
            ? 0.85
            : 1.00) /*
        ..rotateZ(isDrawerOpen ? -50 : 0)*/
      ,
      duration: const Duration(milliseconds: 500),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 30,
                blurStyle: BlurStyle.normal,
                color: Colors.grey.withOpacity(0.5))
          ],
          borderRadius: isDrawerOpen
              ? BorderRadius.circular(25)
              : BorderRadius.circular(0),
          color: widget.colour3),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppDashboardPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),

            //App Bar
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              xOffSet = 0;
                              yOffSet = 0;
                              isDrawerOpen = false;
                            });
                          },
                          child: const Icon(
                            Icons.arrow_circle_left_rounded,
                            size: 65,
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              xOffSet = 310;
                              yOffSet = 100;
                              isDrawerOpen = true;
                            });
                          },
                          child: const Icon(Icons.menu),
                        ),
                  Text(
                    appName,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const BeginnersSmasherTrainerProfile());
                    },
                    child: SizedBox(
                        child: Icon(
                      Icons.notifications_active_outlined,
                      color: widget.colour2,
                    )),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            //widgets
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Smash Arena",
                    style: widget.txtTheme.headline2,
                  ),
                  Text(
                    "lets wipe the floor",
                    style: widget.txtTheme.headline4,
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //search bar
                  SmashArenaDashboardSearchWidget(txtTheme: widget.txtTheme),

                  const SizedBox(
                    height: 10,
                  ),

                  //small scrollable
                  SmashArenaDashboardSmallScrollerWidget(
                      colour1: widget.colour1, txtTheme: widget.txtTheme),

                  const SizedBox(
                    height: defaultHeight,
                  ),

                  //tutorial
                  SmashArenaDashboardTutorialWidget(
                      colour2: widget.colour2, txtTheme: widget.txtTheme),

                  const SizedBox(
                    height: defaultHeight,
                  ),

                  Text(
                    "Arenas",
                    style:
                        widget.txtTheme.subtitle1?.apply(fontSizeFactor: 2.4),
                  ),

                  //arena slide list
                  SmashArenaDashboardArenaSlideWidget(
                      txtTheme: widget.txtTheme),

                  const SizedBox(
                    height: defaultHeight,
                  ),

                  Text(
                    "Smash Events",
                    style:
                        widget.txtTheme.subtitle1?.apply(fontSizeFactor: 2.4),
                  ),

                  SmashArenaDashboardScrollableEvent(size: widget.size)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
