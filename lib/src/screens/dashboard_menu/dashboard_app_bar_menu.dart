import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';
import '../../constants/image.dart';
import '../smashers_arena_trainer_category/smashers_arena_trainer_category.dart';
import 'my_schedule/my_schedule.dart';

class DashboardAppBarMenu extends StatelessWidget {
  const DashboardAppBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final txtTheme = Theme.of(context).textTheme;
    final colour1 = isDarkMode ? AppSecondaryColor : AppPrimaryColor;
    return SizedBox(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          GestureDetector(
            onLongPress: () =>
                Get.to(() => const SmashersArenaTrainerCategory()),
            onTap: () => Get.to(() => const MySchedule()),
            child: UserAccountsDrawerHeader(
              accountName: Text(
                "User Name".toUpperCase(),
                style: txtTheme.headline2!
                    .apply(color: Colors.white, fontSizeFactor: 0.6),
              ),
              accountEmail: Text("accountEmail",
                  style: txtTheme.subtitle2!.apply(color: Colors.white)),
              currentAccountPicture: const CircleAvatar(
                child: ClipOval(
                  child: Image(
                      image: NetworkImage(menuProfileImage),
                      height: 200,
                      fit: BoxFit.cover),
                ),
              ),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(menuBgImage), fit: BoxFit.cover)),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite_border,
              color: colour1,
            ),
            title: Text(
              "Favorites".toUpperCase(),
              style: txtTheme.subtitle1,
            ),
            // onTap: () => Get.to(() => const SmashArenaTrainingScreen()),
          ),
          ListTile(
            leading: Icon(
              Icons.schedule,
              color: colour1,
            ),
            title: Text(
              "My Schedule".toUpperCase(),
              style: txtTheme.subtitle1,
            ),
            onTap: () => Get.to(() => const MySchedule()),
          ),
          ListTile(
            leading: Icon(
              Icons.query_stats_sharp,
              color: colour1,
            ),
            title: Text(
              "My progress".toUpperCase(),
              style: txtTheme.subtitle1,
            ),
            onTap: () => Get.to(() => const SmashersArenaTrainerCategory()),
          ),
          ListTile(
            leading: Icon(
              Icons.leaderboard_outlined,
              color: colour1,
            ),
            title: Text(
              "leader board".toUpperCase(),
              style: txtTheme.subtitle1,
            ),
            onTap: () => Get.to(() => const MySchedule()),
          ),
          Divider(color: colour1),
          ListTile(
            leading: Icon(
              Icons.feedback_outlined,
              color: colour1,
            ),
            title: Text(
              "feedback".toUpperCase(),
              style: txtTheme.subtitle1,
            ),
            // onTap: () => Get.to(() => const MySchedule()),
          ),
          ListTile(
            leading: Icon(
              Icons.perm_device_info_rounded,
              color: colour1,
            ),
            title: Text(
              "about us".toUpperCase(),
              style: txtTheme.subtitle1,
            ),
            // onTap: () => Get.to(() => const MySchedule()),
          ),
          ListTile(
            leading: Icon(
              Icons.rule,
              color: colour1,
            ),
            title: Text(
              "terms and Conditions".toUpperCase(),
              style: txtTheme.subtitle1,
            ),
            // onTap: () => Get.to(() => const MySchedule()),
          ),
          ListTile(
            leading: Icon(
              Icons.help_outline,
              color: colour1,
            ),
            title: Text(
              "Help Center".toUpperCase(),
              style: txtTheme.subtitle1,
            ),
            // onTap: () => Get.to(() => const MySchedule()),
          ),
          Divider(color: colour1),
          ListTile(
            leading: Icon(
              Icons.logout_outlined,
              color: colour1,
            ),
            title: Text(
              "Log Out".toUpperCase(),
              style: txtTheme.subtitle1,
            ),
            // onTap: () => Get.to(() => const MySchedule()),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: colour1,
            ),
            title: Text(
              "setting ".toUpperCase(),
              style: txtTheme.subtitle1,
            ),
            // onTap: () => Get.to(() => const MySchedule()),
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app_outlined,
              color: colour1,
            ),
            title: Text(
              "Exit".toUpperCase(),
              style: txtTheme.subtitle1,
            ),
            // onTap: () => Get.to(() => const MySchedule()),
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app_outlined,
              color: colour1,
            ),
            title: Text(
              "Exit".toUpperCase(),
              style: txtTheme.subtitle1,
            ),
            // onTap: () => Get.to(() => const MySchedule()),
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app_outlined,
              color: colour1,
            ),
            title: Text(
              "Calendar".toUpperCase(),
              style: txtTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}
