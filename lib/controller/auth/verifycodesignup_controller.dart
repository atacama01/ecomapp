import 'package:ecomapp/core/class/statusrequest.dart';
import 'package:ecomapp/core/constant/routes.dart';
import 'package:ecomapp/core/functions/handlingDatacontroller.dart';
import 'package:ecomapp/data/datasource/remote/verifycodesignup.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/utils.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  // late String verifycode;
  StatusRequest? statusrequest;

  String? email;
  VerifyCodeSignUpData verifyCodeSignUpData = VerifyCodeSignUpData(Get.find());
  checkcode();
  goTosucssesSignUp(String verificationCode);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  @override
  checkcode() {}

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  goTosucssesSignUp(String verificationCode) async {
    statusrequest = StatusRequest.loading;
    update();

    var response = await verifyCodeSignUpData.postData(
      email!,
      verificationCode,
    );
    statusrequest = handlingData(response);
    if (statusrequest == StatusRequest.success) {
      if (response['status'] == "success") {
        Get.toNamed(AppRoute.sucssesSignUp);
      } else {
        Get.defaultDialog(
          title: "57".tr,
          middleText: "Verify Code Not Correct",
        );
        statusrequest = StatusRequest.failure;
      }
    }
    update();
  }
}
