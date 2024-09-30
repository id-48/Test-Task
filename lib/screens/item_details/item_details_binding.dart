import 'package:demo_ui/screens/item_details/item_details_controller.dart';
import 'package:get/get.dart';

class ItemDetailsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemDetailsController());
  }
}