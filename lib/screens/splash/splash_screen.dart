import "package:demo_ui/screens/splash/splash_controller.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: GetBuilder<SplashController>(
          init: SplashController(),
          builder: (controller) {
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
