import 'package:flutter/cupertino.dart';
import 'package:flutter_teman_laktasi/app/data/models/user_model/user_model.dart';
import 'package:flutter_teman_laktasi/app/data/services/services.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  TextEditingController messageController = TextEditingController(text: '');

  UserModel userModel = UserModel();

  late bool isFromUser;

  handleAddMessage() async {
    await MessageService().addMessage(
      user: userModel,
      isFromUser: isFromUser,
      message: messageController.text,
    );
    messageController.text = '';
  }

  @override
  void onInit() {
    userModel = Get.arguments['user'];
    isFromUser = Get.arguments['isFromUser'];
    super.onInit();
  }
}
