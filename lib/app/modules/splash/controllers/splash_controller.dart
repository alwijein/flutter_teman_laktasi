import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_teman_laktasi/app/data/services/services.dart';
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

    AuthServices.userStream.listen(onAuthStateChanged);
  }

  void onAuthStateChanged(User? user) async {
    if (user != null) {
      final userModel = await UserServices.getUser(user.uid);
      Get.offAllNamed(Routes.HOME, arguments: userModel);
    } else {
      Get.offAllNamed(Routes.ONBOARDING);
    }
  }
}
