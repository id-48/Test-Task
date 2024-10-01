import 'package:demo_ui/utils/colors_utils.dart';
import 'package:demo_ui/utils/image_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'item_details_api_provider.dart';

class ItemDetailsController extends GetxController {
  ItemDetailsProvider provider = ItemDetailsProvider();
  List imageItemList = [
    AppImages.homeLeavingView1,
    AppImages.homeLeavingView2,
    AppImages.homeLeavingView3,
    AppImages.homeLeavingView4,
    AppImages.homeLeavingView5,
    AppImages.homeLeavingView6,
    AppImages.homeLeavingView7,
  ];
  RxInt pageIndex = 0.obs;

  List chipList = [
    "Wi-fi",
    "65\'HDTV",
    "Hair dryer",
    "Washing machine",
    "Dryer",
    "Dishwasher",
    "Refrigerator"
  ];
  @override
  onInit() {
    super.onInit();
  }

  changePageIndex(int index) {
    pageIndex.value = index;
    update();
  }

  List<Widget> pageIndexIndicators() {
    return List<Widget>.generate(imageItemList.length, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: pageIndex.value == index ? kColorWhite : kColorGrey,
          shape: BoxShape.circle,
        ),
      );
    });
  }
}
