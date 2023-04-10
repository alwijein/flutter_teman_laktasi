import 'package:get/get.dart';

import 'package:flutter_teman_laktasi/app/modules/admin_chat/bindings/admin_chat_binding.dart';
import 'package:flutter_teman_laktasi/app/modules/admin_chat/views/admin_chat_view.dart';
import 'package:flutter_teman_laktasi/app/modules/chat/bindings/chat_binding.dart';
import 'package:flutter_teman_laktasi/app/modules/chat/views/chat_view.dart';
import 'package:flutter_teman_laktasi/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_teman_laktasi/app/modules/home/views/home_view.dart';
import 'package:flutter_teman_laktasi/app/modules/login/bindings/login_binding.dart';
import 'package:flutter_teman_laktasi/app/modules/login/views/login_view.dart';
import 'package:flutter_teman_laktasi/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:flutter_teman_laktasi/app/modules/onboarding/views/onboarding_view.dart';
import 'package:flutter_teman_laktasi/app/modules/register/bindings/register_binding.dart';
import 'package:flutter_teman_laktasi/app/modules/register/views/register_view.dart';
import 'package:flutter_teman_laktasi/app/modules/splash/bindings/splash_binding.dart';
import 'package:flutter_teman_laktasi/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_CHAT,
      page: () => AdminChatView(),
      binding: AdminChatBinding(),
    ),
  ];
}
