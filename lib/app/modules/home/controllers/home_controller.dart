import 'package:flutter_teman_laktasi/app/data/models/user_model/user_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  UserModel userModel = UserModel();

  @override
  void onInit() {
    userModel = Get.arguments;
    super.onInit();
  }
}
