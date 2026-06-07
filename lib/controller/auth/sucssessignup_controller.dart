import 'package:ecomapp/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SucssessignupController extends GetxController {
  goToLogin();
}

class SucssessignupControllerImp extends SucssessignupController {
  @override
  goToLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
