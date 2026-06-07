import 'package:ecomapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/utils.dart';

abstract class ResetPasswordController extends GetxController {
  late TextEditingController password;
  late TextEditingController repassword;
  resetpassword();
  goToSucssesResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  resetpassword() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid##########################################");
      goToSucssesResetPassword();
    } else {
      print("Not Valid======================================");
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }

  @override
  goToSucssesResetPassword() {
    Get.offAllNamed(AppRoute.sucssesResetPassword);
  }
}
