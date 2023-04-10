import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_teman_laktasi/app/modules/components/components.dart';
import 'package:flutter_teman_laktasi/app/routes/app_pages.dart';
import 'package:flutter_teman_laktasi/config/config.dart';
import 'package:flutter_teman_laktasi/constants/constants.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset(
                  'assets/images/illustration-breast.svg',
                ),
              ),
            ),
            Container(
              height: getPropertionateScreenWidht(321),
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: kBackgroundColor2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('assets/images/logo-large.svg'),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Mari Ki' Meng",
                          style: primaryTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 16,
                          ),
                        ),
                        TextSpan(
                          text: 'ASI',
                          style: primaryTextStyle.copyWith(
                            color: kPrimaryColor,
                            fontWeight: medium,
                            fontSize: 16,
                          ),
                        ),
                        TextSpan(
                          text:
                              "h, buat buah hati dan anda lebih nyaman dalam memberi ASI",
                          style: primaryTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  DefaultButton(
                    text: Text(
                      'Buat akun anda dan mulai',
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 16,
                      ),
                    ),
                    press: () => Get.toNamed(Routes.REGISTER),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah punya akun? ',
                        style: primaryTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Get.toNamed(Routes.LOGIN),
                        child: Text(
                          'Masuk',
                          style: primaryTextStyle.copyWith(
                            fontWeight: medium,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
