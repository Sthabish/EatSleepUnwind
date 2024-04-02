import '../../../constants/image.dart';

class SmashersArenaTrainerStaffModel {
  final String name;
  final String staffImage;
  final String staffDesignation;

  SmashersArenaTrainerStaffModel(
      this.name, this.staffImage, this.staffDesignation);

  static List<SmashersArenaTrainerStaffModel> list = [
    SmashersArenaTrainerStaffModel("Raju", beginnerTrainerBg, 'Cleaner'),
    SmashersArenaTrainerStaffModel("Shyam", intermediateTrainerBg, 'Assistant'),
    SmashersArenaTrainerStaffModel("Babu Rao", advancedTrainerBg, 'Manager'),
  ];
}
