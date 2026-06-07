import 'package:ecomapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/utils.dart';

abstract class ForgetPasswordController extends GetxController {
  late TextEditingController email;
  checkemail();
  goToVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  checkemail() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid##########################################");
      goToVerifyCode();
    } else {
      print("Not Valid======================================");
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  goToVerifyCode() {
    Get.toNamed(AppRoute.verifypassword);
  }
}
