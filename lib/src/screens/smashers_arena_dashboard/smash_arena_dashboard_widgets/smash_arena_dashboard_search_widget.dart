import 'package:flutter/material.dart';


class SmashArenaDashboardSearchWidget extends StatelessWidget {
  const SmashArenaDashboardSearchWidget({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(left: BorderSide(width: 4))),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Search... ",
            style: txtTheme.headline1
                ?.apply(color: Colors.blueGrey.withOpacity(0.5)),
          ),
          const Icon(
            Icons.mic,
            size: 25,
          )
        ],
      ),
    );
  }
}