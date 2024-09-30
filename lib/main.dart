import 'package:demo_ui/routes/app_pages.dart';
import 'package:demo_ui/routes/app_routes.dart';
import 'package:demo_ui/screens/splash/splash_binding.dart';
import 'package:demo_ui/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Find Me",
      theme: Themes.light,
      darkTheme: Themes.light,
      // themeMode: ThemeService().theme,
      initialBinding: SplashBinding(),
      // home: const SplashScreen(),
      getPages: AppPages.pages,
      initialRoute: AppRoutes.splash,
      navigatorKey: Get.key,
    );
  }
}
