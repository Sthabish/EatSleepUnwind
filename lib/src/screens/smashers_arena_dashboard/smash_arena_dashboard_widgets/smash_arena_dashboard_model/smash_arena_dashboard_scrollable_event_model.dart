import 'package:flutter/material.dart';
import '../../../../constants/image.dart';

class   SmashArenaDashboardScrollableEventModel{
  final String smashEventImage;
  final String smashEventName;
  final VoidCallback? onPress;

  SmashArenaDashboardScrollableEventModel(this.smashEventImage,this.smashEventName,this.onPress);

  static List <SmashArenaDashboardScrollableEventModel> list=[
    SmashArenaDashboardScrollableEventModel(smashArenaBanner1,"trainer 1 Name",null),
    SmashArenaDashboardScrollableEventModel(smashArenaBanner2,"trainer 2 Name",null),
    SmashArenaDashboardScrollableEventModel(smashArenaBanner3,"trainer 3 Name",null),
  ];

}