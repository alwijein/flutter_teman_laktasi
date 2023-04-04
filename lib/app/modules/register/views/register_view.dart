import 'package:flutter/material.dart';
import 'package:flutter_teman_laktasi/app/modules/components/components.dart';
import 'package:flutter_teman_laktasi/config/config.dart';
import 'package:flutter_teman_laktasi/constants/constants.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buat Akun'),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              Text(
                'Buat akun anda',
                style: primaryTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: getPropertionateScreenHeight(15),
              ),
              Text(
                'Buat akun anda dapatkan bergai informasi terkait bagaiamana cara menyusui anak',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: getPropertionateScreenHeight(15),
              ),
              InputWithLabel(
                label: 'Nama',
                hint: 'Masukkan nama anda',
              ),
              InputWithLabel(
                label: 'Email',
                hint: 'Masukkan email anda',
                intputType: TextInputType.emailAddress,
              ),
              InputWithLabel(
                label: 'Usia Kehamilan',
                hint: 'Masukkan usia kehamilan anda',
                intputType: TextInputType.number,
              ),
              InputWithLabel(
                label: 'Usia Kehamilan',
                hint: 'Masukkan usia kehamilan anda',
                intputType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              SizedBox(
                height: getPropertionateScreenHeight(62),
              ),
              DefaultButton(
                text: Text('Buat Akun'),
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
