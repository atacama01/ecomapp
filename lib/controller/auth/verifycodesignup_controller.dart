import 'package:ecomapp/core/constant/routes.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/utils.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  late String verifycode;
  checkcode();
  goTosucssesSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  @override
  checkcode() {}

  @override
  void onInit() {
    super.onInit();
  }

 

  @override
  goTosucssesSignUp() {
    Get.toNamed(AppRoute.sucssesSignUp);
  }
}
