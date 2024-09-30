import 'dart:async';
import 'package:demo_ui/routes/app_routes.dart';
import 'package:demo_ui/screens/splash/splash_api_provider.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SplashController extends GetxController {
  SplashProvider provider = SplashProvider();

  @override
  onInit() {
    super.onInit();
    onWaitAfterRoute();
  }

  onWaitAfterRoute() {
    Timer(const Duration(seconds: 2), () {
      Get.offAndToNamed(AppRoutes.home);
    });
  }

}

