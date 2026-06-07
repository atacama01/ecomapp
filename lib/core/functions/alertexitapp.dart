import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> alertExitApp() async {
  Get.defaultDialog(
    title: "54".tr,
    middleText: "55".tr,
    actions: [
      ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: Text("56".tr),
      ),
      ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text("57".tr),
      ),
    ],
  );
}