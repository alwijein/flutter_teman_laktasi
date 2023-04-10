import 'package:flutter_teman_laktasi/app/data/models/user_model/user_model.dart';
import 'package:flutter_teman_laktasi/app/data/services/services.dart';
import 'package:get/get.dart';

class AdminChatController extends GetxController with StateMixin {
  final listUser = List.empty(growable: true).obs;

  final lokasiFasyankes = Get.arguments['lokasiFasyankes'];

  void getUsers() async {
    try {
      change(listUser, status: RxStatus.loading());

      listUser.value = await UserServices.getUsers(lokasiFasyankes);

      if (listUser.isEmpty) {
        change(listUser, status: RxStatus.empty());
      } else {
        change(listUser, status: RxStatus.success());
      }
    } catch (e) {
      change(listUser, status: RxStatus.error(e.toString()));
    }
  }

  @override
  void onInit() {
    getUsers();
    super.onInit();
  }
}
