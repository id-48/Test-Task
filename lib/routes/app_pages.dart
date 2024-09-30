import 'package:demo_ui/screens/item_details/item_details_binding.dart';
import 'package:demo_ui/screens/item_details/item_details_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../screens/home/home_binding.dart';
import '../screens/home/home_screen.dart';
import '../screens/splash/splash_binding.dart';
import '../screens/splash/splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),

    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.itemDetails,
      page: () => const ItemDetailsScreen(),
      binding: ItemDetailsBindings(),
    ),

  ];
}
