import 'package:get/get.dart';

import '../controllers/teknik_pijit_endorphine_controller.dart';

class TeknikPijitEndorphineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TeknikPijitEndorphineController>(
      () => TeknikPijitEndorphineController(),
    );
  }
}
