import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../home/home_controller.dart';


class BottomNavigationController extends GetxController {
  var tabIndex = 0.obs;

  @override
  void onInit() {
    dynamic argumentData = Get.arguments;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      tabIndex(0);
      update();
      bool isIndex = await argumentData != null;
      print("data value is = $isIndex -->> ${argumentData}");
      if (isIndex) {
        tabIndex.value = int.parse(await argumentData["index"]);
        update();
      }
    });
    super.onInit();
  }

  void changeTabIndex(int index) {
    tabIndex.value = index;


    update();

    print('index ::${index}');
    // if (index == 1) {
    //   Get.toNamed(AppRoutes.searchList);
    // }
  }
}
