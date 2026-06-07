import 'package:ecomapp/core/constant/routes.dart';
import 'package:ecomapp/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:ecomapp/core/localization/changelocal.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr, style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 30),
            CustomButtonLang(
              textbutton: "English",
              onPressed: () {
                controller.changeLang("en");
                Get.toNamed(AppRoute.onBoarding);
              },
            ),
            CustomButtonLang(
              textbutton: "Arabic",
              onPressed: () {
                controller.changeLang("ar");
                Get.toNamed(AppRoute.onBoarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
