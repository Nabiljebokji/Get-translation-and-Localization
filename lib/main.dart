// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_translation_and_localization/Locale/locale.dart';
import 'package:get_translation_and_localization/Locale/localecontroller.dart';
import 'package:get_translation_and_localization/frontPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocalController mylocalcontroller = Get.put(MyLocalController());
    return GetMaterialApp(
      home: FrontPage(),
      //this will take the phones language
      // locale: Get.deviceLocale,
      locale: mylocalcontroller
          .initialLang, //and this will save the language in the cach
      // this will take all the langueges is this class and translate it uesing loacle
      translations: MyLocale(),
      getPages: [
        GetPage(name: "/frontpage", page: () => FrontPage()),
      ],
    );
  }
}
