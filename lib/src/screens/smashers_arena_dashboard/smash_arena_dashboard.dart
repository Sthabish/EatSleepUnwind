import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../dashboard_menu/dashboard_app_bar_menu.dart';
import 'smashers_arena_dashboard_widget.dart';

class SmashArenaDashboard extends StatelessWidget {
  const SmashArenaDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final txtTheme = Theme.of(context).textTheme;
    final colour1 = isDarkMode ? AppSecondaryColor : AppPrimaryColor;
    final colour2 = isDarkMode ? AppPrimaryColor : AppSecondaryColor;
    final colour3 = isDarkMode ? Colors.grey : Colors.white;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [

          //slide menu
          const DashboardAppBarMenu(),

          //dashboard
          SmashersArenaDashboardWidget(
            txtTheme: txtTheme,
            colour1: colour1,
            colour2: colour2,
            colour3: colour3,
            size: size,
          ),
        ],
      ),
    );
  }
}
