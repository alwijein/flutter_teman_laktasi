import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController fullnameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  TextEditingController noHpC = TextEditingController();
  TextEditingController alamatC = TextEditingController();
  TextEditingController nifasHariKeC = TextEditingController();
  TextEditingController lokasiFasyankesC = TextEditingController();
  TextEditingController jumlahAnakC = TextEditingController();

  var isShow = true.obs;

  void showPass() => isShow.value = !isShow.value;

  @override
  void onClose() {
    fullnameC.dispose();
    emailC.dispose();
    passwordC.dispose();
    noHpC.dispose();
    alamatC.dispose();
    nifasHariKeC.dispose();
    lokasiFasyankesC.dispose();
    jumlahAnakC.dispose();
    super.onClose();
  }
}
