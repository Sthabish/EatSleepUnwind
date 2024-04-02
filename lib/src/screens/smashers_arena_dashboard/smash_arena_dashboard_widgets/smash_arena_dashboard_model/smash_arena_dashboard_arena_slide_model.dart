import 'package:flutter/material.dart';
import '../../../../constants/image.dart';

class SmashArenaDashboardArenaSlideWidgetModel{
  final String smashArenasImage;
  final String smashArenasName;
  final String smashArenasPrice;
  final VoidCallback? onPress;

  SmashArenaDashboardArenaSlideWidgetModel(this.smashArenasImage,this.smashArenasName,this.smashArenasPrice,this.onPress);

  static List <SmashArenaDashboardArenaSlideWidgetModel> list=[
    SmashArenaDashboardArenaSlideWidgetModel(smashArenaCourt1,"Arena 1 Name","Arena price",null),
    SmashArenaDashboardArenaSlideWidgetModel(smashArenaCourt2,"Arena 2 Name","Arena price",null),
  ];

}