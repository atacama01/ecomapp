import 'package:ecomapp/core/class/statusrequest.dart';
import 'package:ecomapp/core/constant/routes.dart';
import 'package:ecomapp/core/functions/handlingDatacontroller.dart';
import 'package:ecomapp/data/datasource/remote/login.dart';
import 'package:ecomapp/view/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/utils.dart';

abstract class LoginController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  StatusRequest? statusrequest;
  bool isshowpassword = true;
  LoginData loginData = LoginData(Get.find());
  login();
  goToSignUp();
  goToForgetPassword();
  showPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  login() async {
    statusrequest = StatusRequest.loading;
    update();

    var response = await loginData.postData(email.text, password.text);
    statusrequest = handlingData(response);
    if (statusrequest == StatusRequest.success) {
      if (response['status'] == "success") {
        print("wooooooooooooooooooooooooooooooooooooooooooooooooo");
        Get.toNamed(AppRoute.homepage);
      } else {
        print("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
        Get.defaultDialog(
          title: "57".tr,
          middleText: "Email or Password Not Correct",
        );
        statusrequest = StatusRequest.failure;
      }
    }
    update();
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
