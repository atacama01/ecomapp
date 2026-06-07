import 'package:ecomapp/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SucssesResetPasswordController extends GetxController {
  goToLogin();
}

class SucssesResetPasswordControllerImp extends SucssesResetPasswordController {
  @override
  goToLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
