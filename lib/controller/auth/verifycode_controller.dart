import 'package:ecomapp/core/constant/routes.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/utils.dart';

abstract class VerifyCodeController extends GetxController {
  late String verifycode;
  checkcode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  @override
  checkcode() {}

  @override
  void onInit() {
    super.onInit();
  }

 

  @override
  goToResetPassword() {
    Get.toNamed(AppRoute.resetPassword);
  }
}
