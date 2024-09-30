import 'dart:async';
import 'package:demo_ui/routes/app_routes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'item_details_api_provider.dart';

class ItemDetailsController extends GetxController {
  ItemDetailsProvider provider = ItemDetailsProvider();

  @override
  onInit() {
    super.onInit();
  }


}

