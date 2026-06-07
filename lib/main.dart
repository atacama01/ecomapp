import 'package:ecomapp/binding.dart';
import 'package:ecomapp/core/localization/changelocal.dart';
import 'package:ecomapp/core/localization/translation.dart';
import 'package:ecomapp/core/services/servecies.dart';
import 'package:ecomapp/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: Mytranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Ecom App',
      locale: controller.language,
      theme: controller.apptheme,
      initialBinding: MyBinding(),
      getPages: routes,
      // routes: routes,
    );
  }
}
//Language(),