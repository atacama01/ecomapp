import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  // Check if empty first
  if (val.isEmpty) {
    return "51".tr; // "can't be empty"
  }

  // Check length
  if (val.length < min) {
    return "52".tr + " $min"; // "can't be less than"
  }

  if (val.length > max) {
    return "53".tr + " $max"; // "can't be larger than"
  }

  // Type-specific validation
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "47".tr; // "not valid username"
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "48".tr; // "not valid email"
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "49".tr; // "not valid phone number"
    }
  }

  // All validations passed
  return null;
}