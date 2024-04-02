import 'package:flutter/cupertino.dart';
import 'smash_arena_dashboard_model/smash_arena_dashboard_scrollable_event_model.dart';

class SmashArenaDashboardScrollableEvent extends StatelessWidget {
  const SmashArenaDashboardScrollableEvent({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    final list = SmashArenaDashboardScrollableEventModel.list;
    return SizedBox(
      height: size.height / 1.7,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(top: 10),
          child: GestureDetector(
            onTap: list[index].onPress,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                width: size.width,
                height: 200,
                image: AssetImage(list[index].smashEventImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
