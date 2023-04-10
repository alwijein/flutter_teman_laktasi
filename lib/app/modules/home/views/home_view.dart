import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_teman_laktasi/app/data/models/user_model/user_model.dart';
import 'package:flutter_teman_laktasi/app/data/services/services.dart';
import 'package:flutter_teman_laktasi/app/modules/components/components.dart';
import 'package:flutter_teman_laktasi/app/routes/app_pages.dart';
import 'package:flutter_teman_laktasi/config/config.dart';
import 'package:flutter_teman_laktasi/constants/constants.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/images/logo-small.svg'),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: CircleAvatar(),
        //   ),
        // ],
        // centerTitle: false,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(kDefaultPadding),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, ${controller.userModel.fullname}',
                style: subtitleTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: getPropertionateScreenWidht(15),
              ),
              Text(
                'Silahkan Pilih Menu Yang Tersedia',
                style: primaryTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: bold,
                ),
              ),
              SizedBox(height: getPropertionateScreenWidht(30)),
              Row(
                children: [
                  Expanded(
                    child: MenuCardPotrait(
                      icon: 'icon-book',
                      title: 'Pengantar Pijit Endorphine',
                      color: Color(0xFFBDEB98),
                    ),
                  ),
                  SizedBox(
                    width: getPropertionateScreenWidht(15),
                  ),
                  Expanded(
                    child: MenuCardPotrait(
                      icon: 'icon-breast',
                      title: 'Teknik Pijit Endorphine',
                      color: Color(0xFFE6B47C),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getPropertionateScreenWidht(15),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(
                  controller.userModel.role == 'user'
                      ? Routes.CHAT
                      : Routes.ADMIN_CHAT,
                  arguments: {
                    'user': controller.userModel,
                    'isFromUser': true,
                    'lokasiFasyankes': controller.userModel.lokasiFasyankes,
                  },
                ),
                child: MenuCardLandscape(),
              ),
              SizedBox(height: getPropertionateScreenWidht(30)),
              DefaultButton(
                text: Text(
                  'Keluar dari aplikasi',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                ),
                press: () {
                  AuthServices.signOut();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuCardLandscape extends StatelessWidget {
  const MenuCardLandscape({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getPropertionateScreenWidht(116),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: kBackgroundColor2,
        boxShadow: softShadow,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: Color(0xFFB2A4EB).withOpacity(0.16),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset('assets/icons/icon-message.svg'),
          ),
          SizedBox(width: getPropertionateScreenWidht(19)),
          Text(
            'Ngobrol LaktASI',
            style: primaryTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class MenuCardPotrait extends StatelessWidget {
  const MenuCardPotrait({
    Key? key,
    required this.icon,
    required this.title,
    required this.color,
  }) : super(key: key);

  final String icon, title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding - 5),
      height: getPropertionateScreenWidht(170),
      decoration: BoxDecoration(
        color: kBackgroundColor2,
        boxShadow: softShadow,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: color.withOpacity(0.16),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset('assets/icons/$icon.svg'),
          ),
          Spacer(),
          Text(
            title,
            style: primaryTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
