import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_teman_laktasi/app/data/services/services.dart';
import 'package:flutter_teman_laktasi/app/modules/components/components.dart';
import 'package:flutter_teman_laktasi/app/routes/app_pages.dart';
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  textController: controller.fullnameC,
                ),
                InputWithLabel(
                  label: 'Email',
                  hint: 'Masukkan email anda',
                  intputType: TextInputType.emailAddress,
                  textController: controller.emailC,
                ),
                InputWithLabel(
                  label: 'Nifas Hari Ke',
                  hint: 'Masukkan hari nifas anda',
                  intputType: TextInputType.number,
                  textController: controller.nifasHariKeC,
                ),
                InputWithLabel(
                  label: 'Jumlah Anak',
                  hint: 'Masukkan jumlah anak anda',
                  intputType: TextInputType.number,
                  textController: controller.jumlahAnakC,
                ),
                SizedBox(
                  height: getPropertionateScreenWidht(16),
                ),
                Text(
                  'Lokasi Fasyankes',
                  style: subtitleTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: getPropertionateScreenWidht(8),
                ),
                DropdownInput(
                  hintText: 'Pilih lokasi fasyankes',
                  typeFormModel: [
                    'Minasaupa',
                    'Kassi-Kassi',
                    'Jongaia',
                  ],
                  onChanged: (value) {
                    controller.lokasiFasyankesC.text = value ?? '-';
                  },
                ),
                InputWithLabel(
                  label: 'Alamat',
                  hint: 'Masukkan alamat anda',
                  intputType: TextInputType.streetAddress,
                  textController: controller.alamatC,
                ),
                InputWithLabel(
                  label: 'Nomor Handphone',
                  hint: 'Masukkan nomor handphone anda',
                  intputType: TextInputType.phone,
                  textController: controller.noHpC,
                ),
                Obx(
                  () => InputWithLabel(
                    label: 'Password',
                    hint: 'Masukkan password anda',
                    intputType: TextInputType.visiblePassword,
                    obscureText: controller.isShow.value,
                    textController: controller.passwordC,
                    onShowPass: () => controller.showPass(),
                  ),
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(50),
                ),
                DefaultButton(
                  text: Text(
                    'Buat Akun',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  press: () async {
                    EasyLoading.show(status: 'Loading');

                    if (!await AuthServices.signUp(
                      fullname: controller.fullnameC.text,
                      email: controller.emailC.text,
                      noHp: controller.noHpC.text,
                      nifasHariKe: controller.nifasHariKeC.text,
                      alamat: controller.alamatC.text,
                      jumlahAnak: controller.jumlahAnakC.text,
                      lokasiFasyankes: controller.lokasiFasyankesC.text,
                      password: controller.passwordC.text,
                    )) {
                      EasyLoading.showError('Gagal melakukan register');
                    }

                    EasyLoading.dismiss();
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
