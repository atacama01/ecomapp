import 'package:ecomapp/controller/auth/login_controller.dart';
import 'package:ecomapp/controller/auth/signup_controller.dart';
import 'package:ecomapp/core/class/crud.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    Get.lazyPut(() => LoginControllerImp(), fenix: true);
    Get.put(Crud());
  }
}
