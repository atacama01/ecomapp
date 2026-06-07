import 'package:ecomapp/core/class/statusrequest.dart';
import 'package:ecomapp/core/constant/routes.dart';
import 'package:ecomapp/core/functions/handlingDatacontroller.dart';
import 'package:ecomapp/data/datasource/remote/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/utils.dart';

abstract class SignUpController extends GetxController {
  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController password;
  bool isshowpassword = true;

  late StatusRequest statusrequest;

  SignupData signupData = SignupData(Get.find());
  List data = [];

  signup();
  goToLogin();
  showPassword();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
@override
signup() async {
  var formdata = formstate.currentState;
  if (formdata!.validate()) {
    print("✅ Form validated");
    
    statusrequest = StatusRequest.loading;
    update();
    
    print("📡 Calling API...");
    print("Username: ${username.text}");
    print("Email: ${email.text}");
    print("Phone: ${phone.text}");
    
    try {
      var response = await signupData.postData(
        username.text,
        password.text,
        email.text,
        phone.text,
      ).timeout(Duration(seconds: 10));  // ✅ Add timeout
      
      print("📥 Response received: $response");
      
      statusrequest = handlingData(response);
      
      if (statusrequest == StatusRequest.success) {
        if (response['status'] == "success") {
          print("✅ Success - navigating");
          Get.offAllNamed(AppRoute.verifycodesignup);
        } else {
          print("❌ API returned failure: ${response['message']}");
          Get.defaultDialog(
            title: "57".tr, 
            middleText: response['message'] ?? "58".tr
          );
          statusrequest = StatusRequest.failure;
        }
      } else {
        print("❌ Status request failed: $statusrequest");
      }
    } catch (e) {
      print("🔥 ERROR: $e");
      statusrequest = StatusRequest.serverfailure;
      Get.defaultDialog(title: "Error", middleText: e.toString());
    }
    
    update();
  }
}

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    username = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    phone.dispose();
    username.dispose();
    super.dispose();
  }

  @override
  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }
}
