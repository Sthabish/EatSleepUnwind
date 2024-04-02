import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/image.dart';
import '../../smashers_arena_dashboard/smash_arena_dashboard.dart';

class MyScheduleModel {
  final String statusIcon;
  final String bookingStatus;
  final Color bookingStatusColor;
  final String bookingDate;
  final String bookingTimingFrom;
  final String bookingTimingTo;
  final String bookingItemImage;
  final VoidCallback? bookingOnPressed;

  final String bookingId;
  final String bookingRequestDate;

  MyScheduleModel(
    this.statusIcon,
    this.bookingStatus,
    this.bookingStatusColor,
    this.bookingDate,
    this.bookingTimingFrom,
    this.bookingTimingTo,
    this.bookingItemImage,
    this.bookingOnPressed,
    this.bookingId,
    this.bookingRequestDate,
  );

  static List<MyScheduleModel> list = [
    MyScheduleModel(confirmedStatus, "Confirmed", Colors.green, "12 Nov 2023",
        " : " + "12.00 PM", " : " + "01.00 PM", smashArenaCourt1, () {
      Get.to(() => const SmashArenaDashboard());
    }, "[#" + "123456789" + "]", "10 Nov 2023"),
    MyScheduleModel(canceledStatus, "Canceled", Colors.red, "12 Nov 2023",
        " : " + "12.00 PM", " : " + "01.00 PM", smashArenaCourt2, () {
      Get.to(() => const SmashArenaDashboard());
    }, "[#" + "123456789" + "]", "10 Nov 2023"),
    MyScheduleModel(pendingStatus, "Processing", Colors.orange, "12 Nov 2023",
        " : " + "12.00 PM", " : " + "01.00 PM", smashArenaCourt2, () {
      Get.to(() => const SmashArenaDashboard());
    }, "[#" + "123456789" + "]", "10 Nov 2023"),
    MyScheduleModel(failedStatus, "Failed", Colors.redAccent, "12 Nov 2023",
        " : " + "12.00 PM", " : " + "01.00 PM", smashArenaCourt1, () {
      Get.to(() => const SmashArenaDashboard());
    }, "[#" + "123456789" + "]", "10 Nov 2023"),
    MyScheduleModel(canceledStatus, "Canceled", Colors.red, "12 Nov 2023",
        " : " + "12.00 PM", " : " + "01.00 PM", smashArenaCourt2, () {
      Get.to(() => const SmashArenaDashboard());
    }, "[#" + "123456789" + "]", "10 Nov 2023"),
    MyScheduleModel(confirmedStatus, "Confirmed", Colors.green, "12 Nov 2023",
        " : " + "12.00 PM", " : " + "01.00 PM", smashArenaCourt1, () {
      Get.to(() => const SmashArenaDashboard());
    }, "[#" + "123456789" + "]", "10 Nov 2023"),
    MyScheduleModel(failedStatus, "Failed", Colors.redAccent, "12 Nov 2023",
        " : " + "12.00 PM", " : " + "01.00 PM", smashArenaCourt1, () {
      Get.to(() => const SmashArenaDashboard());
    }, "[#" + "123456789" + "]", "10 Nov 2023"),
    MyScheduleModel(pendingStatus, "Processing", Colors.orange, "12 Nov 2023",
        " : " + "12.00 PM", " : " + "01.00 PM", smashArenaCourt2, () {
      Get.to(() => const SmashArenaDashboard());
    }, "[#" + "123456789" + "]", "10 Nov 2023"),
    MyScheduleModel(confirmedStatus, "Confirmed", Colors.green, "12 Nov 2023",
        " : " + "12.00 PM", " : " + "01.00 PM", smashArenaCourt1, () {
      Get.to(() => const SmashArenaDashboard());
    }, "[#" + "123456789" + "]", "10 Nov 2023"),
  ];
}
