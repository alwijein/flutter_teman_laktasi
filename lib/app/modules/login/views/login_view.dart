import 'package:flutter/material.dart';
import 'package:flutter_teman_laktasi/app/data/services/services.dart';
import 'package:flutter_teman_laktasi/app/modules/components/components.dart';
import 'package:flutter_teman_laktasi/config/config.dart';
import 'package:flutter_teman_laktasi/constants/constants.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Masuk'),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(kDefaultPadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Masuk ke akun anda',
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(15),
                ),
                Text(
                  'Masuk ke akun anda dengan mengisi form email dan password dengan benar',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(15),
                ),
                InputWithLabel(
                  label: 'Email',
                  hint: 'Masukkan email anda',
                  intputType: TextInputType.emailAddress,
                  textController: controller.emailC,
                ),
                InputWithLabel(
                  label: 'Password',
                  hint: 'Masukkan password anda',
                  intputType: TextInputType.visiblePassword,
                  obscureText: true,
                  textController: controller.passwordC,
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(50),
                ),
                DefaultButton(
                  text: Text(
                    'Masuk',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  press: () async {
                    await AuthServices.signIn(
                      controller.emailC.text,
                      controller.passwordC.text,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
