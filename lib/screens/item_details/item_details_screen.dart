import "package:demo_ui/screens/item_details/item_details_controller.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:google_fonts/google_fonts.dart";

import "../../utils/colors_utils.dart";
import "../../utils/image_utils.dart";

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ItemDetailsController>(
        init: ItemDetailsController(),
        builder: (controller) {
          return Stack(
            children: [
              Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: Get.height * 0.35,
                        decoration: const BoxDecoration(
                            borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(35),
                                bottomRight: Radius.circular(35)),
                            image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black45, BlendMode.colorBurn),
                                image: AssetImage(AppImages.homeLeavingView),
                                fit: BoxFit.fill)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 60, 20, 28),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black45,
                                          borderRadius: BorderRadius.circular(
                                              20),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.close,
                                            color: kColorWhite,
                                          ),
                                        )),
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black45,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.upload,
                                          color: kColorWhite,
                                        ),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Entire cabin in Lillehammer ",
                              style: GoogleFonts.inter(fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: kColorBlack),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 25,
                                    color: kColorBlack,
                                  ),
                                  Text(
                                    "4.55 (217 review)",
                                    style: GoogleFonts.inter(fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: kColorBlack),
                                  ),
                                ],
                              ),
                            ),
                            Divider(color: kColorGrey.withOpacity(0.6),)
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          );
        },
      ),
    );
  }
}
