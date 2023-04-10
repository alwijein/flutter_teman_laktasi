import 'package:flutter/material.dart';
import 'package:flutter_teman_laktasi/app/modules/components/components.dart';
import 'package:flutter_teman_laktasi/config/config.dart';

import 'package:get/get.dart';

import '../controllers/admin_chat_controller.dart';

class AdminChatView extends GetView<AdminChatController> {
  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        margin: EdgeInsets.all(getPropertionateScreenWidht(24)),
        width: double.infinity,
        child: controller.obx(
          (state) => ListView(
            children: controller.listUser
                .map(
                  (hasil) => ChatTile(
                    listUser: hasil,
                  ),
                )
                .toList(),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Chat'),
        centerTitle: true,
      ),
      body: content(),
    );
  }
}
