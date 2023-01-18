// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Locale/localecontroller.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocalController mylocalcontroller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title:
            Text("1".tr), ///////////TR is for the translation in the main class
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("eatshit".tr),
            ElevatedButton(
              onPressed: () {
                mylocalcontroller.changeLang("ar");
              },
              child: Text("3".tr),
            ),
            ElevatedButton(
              onPressed: () {
                mylocalcontroller.changeLang("en");
              },
              child: Text("4".tr),
            ),
          ],
        ),
      ),
    );
  }
}
