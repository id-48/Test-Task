import 'package:bubble/bubble.dart';
import 'package:demo_ui/screens/chat/chat_api_provider.dart';
import 'package:demo_ui/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ChatController extends GetxController {
  ChatProvider provider = ChatProvider();
  BubbleStyle styleSomebody = const BubbleStyle(
    nip: BubbleNip.leftTop,
    color: kColorWhite,
    elevation: 1,
    margin: BubbleEdges.only(top: 8, right: 50),
    alignment: Alignment.topLeft,
  );

  BubbleStyle styleMe = const BubbleStyle(
    nip: BubbleNip.rightTop,
    color: spaceLight,
    elevation: 1,
    margin: BubbleEdges.only(top: 8, left: 50),
    alignment: Alignment.topRight,
  );

  @override
  onInit() {
    super.onInit();
  }
}
