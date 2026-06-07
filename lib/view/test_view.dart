import 'package:ecomapp/controller/test_controller.dart';
import 'package:ecomapp/core/class/handling_data_view.dart';
import 'package:ecomapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(title: Text("test page"), backgroundColor: AppColor.primaryColor,),
      body: GetBuilder<TestController>(
        builder: (controller) {
          return HandlingDataView(
            statusRequest: controller.statusrequest,
            widget: ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                return Text("${controller.data}");
              },
            ),
          );
        },
      ),
    );
  }
}





// if (controller.statusrequest == StatusRequest.loading) {
          //   return Center(child: Text("Loading"));
          // } else if (controller.statusrequest == StatusRequest.offlinefailure) {
          //   return Center(child: Text("Offline failure"));
          // } else if (controller.statusrequest == StatusRequest.serverfailure) {
          //   return Center(child: Text("Server Failure"));
          // } else if (controller.statusrequest == StatusRequest.failure) {
          //   return Center(child: Text("No Data"));
          // } else {
          //}