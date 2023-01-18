// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_translation_and_localization/main.dart';

class MyLocalController extends GetxController {
  Locale initialLang = sharedPref!.getString("lang") == null
      ? Get.deviceLocale!
      : Locale(sharedPref!.getString("lang")!);

  void changeLang(String langCode) {
    Locale local = Locale(langCode);
    sharedPref!.setString("lang", "${langCode}");
    Get.updateLocale(local);
  }
}
