import 'package:ecomapp/core/constant/apptheme.dart';
import 'package:ecomapp/core/services/servecies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;

  Myservices myServices = Get.find();

  ThemeData apptheme = themeEnglish;

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    apptheme = langcode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(apptheme);
    Get.updateLocale(locale);
  }

  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      apptheme = themeArabic;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      apptheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      apptheme = themeEnglish;
    }
    super.onInit();
  }
}
