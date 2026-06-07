import 'package:ecomapp/core/class/statusrequest.dart';
import 'package:ecomapp/core/functions/handlingDatacontroller.dart';
import 'package:ecomapp/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());
  List data = [];

  late StatusRequest statusrequest;

  getData() async {
    statusrequest = StatusRequest.loading;
    var response = await testData.getData();
    statusrequest = handlingData(response);
    if (statusrequest == StatusRequest.success) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusrequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
