import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_teman_laktasi/app/routes/app_pages.dart';
import 'package:flutter_teman_laktasi/constants/constants.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  Widget circleLoad = SizedBox();

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 2), () {
      circleLoad = CircularProgressIndicator(
        color: kPrimaryColor,
      );
    });

    // ! Remove after integration API
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(Routes.ONBOARDING);
    });
  }
}
