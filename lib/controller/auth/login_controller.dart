import 'package:ecomapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/utils.dart';

abstract class LoginController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  bool isshowpassword = true;
  login();
  goToSignUp();
  goToForgetPassword();
  showPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  login() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid##########################################");
    } else {
      print("Not Valid======================================");
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetpassword);
  }

  @override
  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }
}
