import "package:bubble/bubble.dart";
import "package:demo_ui/routes/app_routes.dart";
import "package:demo_ui/screens/chat/chat_controller.dart";
import "package:demo_ui/utils/colors_utils.dart";
import "package:flutter/material.dart";
import "package:flutter_animate/flutter_animate.dart";
import "package:get/get.dart";
import "package:google_fonts/google_fonts.dart";

import "../../utils/image_utils.dart";

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kColorBlack,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              decoration: BoxDecoration(
                color: kColorWhite,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
            ),
          ),
          title: Text(
            "Football Fanatics",
            style:
                GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          backgroundColor: kColorBlack,
          leading: InkWell(
            onTap: () {
              Get.offAndToNamed(AppRoutes.home);
            },
            child: Icon(
              Icons.arrow_back,
              color: kColorBlack,
            ),
          ),
          actions: [
            Icon(
              Icons.more_horiz,
              color: kColorBlack,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: GetBuilder<ChatController>(
          init: ChatController(),
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: 17,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: Get.width / 2,
                            child: Row(
                              children: [
                                index == 5 ||
                                        index == 8 ||
                                        index == 11 ||
                                        index == 13
                                    ? const SizedBox()
                                    : const CircleAvatar(
                                        radius: 15,
                                        backgroundImage: AssetImage(
                                            AppImages.homeLeavingView1),
                                      ),
                                Expanded(
                                  child: Bubble(
                                    style: index == 5 ||
                                            index == 8 ||
                                            index == 11 ||
                                            index == 13
                                        ? controller.styleMe
                                        : controller.styleSomebody,
                                    child: Text(
                                      'Hey, evenryone, did you see the latest score? ',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: index == 5 ||
                                                  index == 8 ||
                                                  index == 11 ||
                                                  index == 13
                                              ? kColorWhite
                                              : kColorBlack),
                                    ),
                                  ),
                                ),
                                index == 5 ||
                                        index == 8 ||
                                        index == 11 ||
                                        index == 13
                                    ? const CircleAvatar(
                                        radius: 15,
                                        backgroundImage: AssetImage(
                                            AppImages.homeLeavingView1),
                                      )
                                    : SizedBox()
                              ],
                            ),
                          )
                              .animate()
                              .fadeIn(
                                  duration: 400.ms,
                                  delay: (index * 50).ms) // Fade-in animation
                              .slide(
                                  begin: Offset(0, 0.5), curve: Curves.easeOut),
                        );
                      }),
                ),
                Container(
                  height: 80,
                  decoration: const BoxDecoration(
                    color: kColorWhite,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: kColorBlack,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 45,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelStyle: TextStyle(color: Colors.blueAccent),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: kColorGrey.withOpacity(0.8),
                                      width: 1),
                                  borderRadius: BorderRadius.circular(
                                      20), // Border radius
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: kColorGrey.withOpacity(0.8),
                                      width: 1),
                                  borderRadius: BorderRadius.circular(
                                      20), // Border radius when focused
                                ),
                                suffixIcon: Icon(
                                  Icons.motion_photos_on_outlined,
                                  color: kColorBlack,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.camera_alt_outlined,
                          color: kColorBlack,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.mic_sharp,
                          color: kColorBlack,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
