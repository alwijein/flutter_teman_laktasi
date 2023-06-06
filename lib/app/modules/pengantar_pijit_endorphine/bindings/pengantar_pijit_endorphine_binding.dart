import 'package:get/get.dart';

import '../controllers/pengantar_pijit_endorphine_controller.dart';

class PengantarPijitEndorphineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PengantarPijitEndorphineController>(
      () => PengantarPijitEndorphineController(),
    );
  }
}
