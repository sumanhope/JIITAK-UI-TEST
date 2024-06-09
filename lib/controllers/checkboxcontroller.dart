import 'package:get/get.dart';

class CheckBoxController extends GetxController {
  var checkboxStates = <String, bool>{
    'closingdayrow1_1': false,
    'closingdayrow1_2': false,
    'closingdayrow1_3': false,
    'closingdayrow1_4': false,
    'closingdayrow2_1': false,
    'closingdayrow2_2': true,
    'closingdayrow2_3': true,
    'closingdayrow2_4': true,
    'smokingseat_yes': true,
    'smokingseat_no': false,
    'parking_yes': true,
    'parking_no': false,
    'visit_yes': true,
    'visit_no': false,
  }.obs;

  void toggleCheckbox(String id) {
    checkboxStates[id] = !(checkboxStates[id] ?? false);
  }
}
