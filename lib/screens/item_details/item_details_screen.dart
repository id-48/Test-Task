import "package:carousel_slider/carousel_slider.dart";
import "package:demo_ui/screens/item_details/item_details_controller.dart";
import "package:demo_ui/utils/image_utils.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:google_fonts/google_fonts.dart";

import "../../utils/colors_utils.dart";

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
                  child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            child: CarouselSlider(
                                options: CarouselOptions(
                                    height: Get.height * 0.40,
                                    autoPlay: true,
                                    viewportFraction: 1,
                                    autoPlayInterval:
                                        const Duration(seconds: 5),
                                    onPageChanged: (index, reason) {
                                      controller.changePageIndex(index);
                                    }),
                                items: controller.imageItemList.map((item) {
                                  return Stack(
                                    children: [
                                      Container(
                                        height: 80,
                                        color: kColorBlack,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 50),
                                        child: Container(
                                          height: Get.height * 0.40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(35),
                                              image: DecorationImage(
                                                  colorFilter:
                                                      const ColorFilter.mode(
                                                          Colors.black45,
                                                          BlendMode.colorBurn),
                                                  image: AssetImage(item),
                                                  fit: BoxFit.fill)),
                                        ),
                                      ),
                                    ],
                                  );
                                }).toList()),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 65, 20, 28),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.black45,
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: Get.height * 0.22),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(),
                                      Row(
                                        children:
                                            controller.pageIndexIndicators(),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black45,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8, 5, 8, 5),
                                          child: Text(
                                            "${controller.pageIndex.value + 1}/${controller.imageItemList.length}",
                                            style: GoogleFonts.inter(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: kColorWhite),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
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
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: kColorBlack),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 25,
                                  color: kColorBlack,
                                ),
                                Text(
                                  "4.55 (217 review)",
                                  style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: kColorBlack),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: kColorGrey.withOpacity(0.6),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Entire home",
                                      style: GoogleFonts.inter(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: kColorBlack),
                                    ),
                                    Text(
                                      "Hosted by isablie",
                                      style: GoogleFonts.inter(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: kColorGrey),
                                    ),
                                  ],
                                ),
                                const CircleAvatar(
                                  radius: 20,
                                  backgroundImage:
                                      AssetImage(AppImages.homeLeavingView1),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: kColorGrey.withOpacity(0.6),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Amenities",
                                  style: GoogleFonts.inter(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: kColorBlack),
                                ),
                                Wrap(
                                  spacing: 5.0,
                                  // Space between chips horizontally
                                  runSpacing: 0,
                                  // Space between rows of chips
                                  children: controller.chipList.map((label) {
                                    return Chip(
                                      label: Text(label),
                                      backgroundColor:
                                          kColorGrey.withOpacity(0.3),
                                      labelStyle: GoogleFonts.poppins(
                                          color: kColorBlack,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20), // Customize the radius here
                                      ),
                                      labelPadding: EdgeInsets
                                          .zero, // Remove label padding
                                    );
                                  }).toList(),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: kColorGrey.withOpacity(0.6),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.account_balance,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Self check-in",
                                      style: GoogleFonts.inter(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: kColorBlack),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Check yourself in with the lockbox",
                                  style: GoogleFonts.inter(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: kColorGrey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.key,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Grate check-in experience",
                                      style: GoogleFonts.inter(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: kColorBlack),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "100% of recent guests gave the check-in process a 5-star rating",
                                  style: GoogleFonts.inter(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: kColorGrey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    // Set border radius
                    child: Container(
                      height: 70, // Set height of the blurred container
                      decoration: BoxDecoration(
                        color: Colors.black, // Transparent background
                        borderRadius: BorderRadius.circular(
                            50), // Same border radius as clip
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "1B-21 Oct- 3 nights:",
                                    style: GoogleFonts.inter(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: kColorGrey),
                                  ),
                                  Text(
                                    "\$384",
                                    style: GoogleFonts.inter(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        color: kColorWhite),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: kColorWhite, // Transparent background
                                borderRadius: BorderRadius.circular(
                                    50), // Same border radius as clip
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 15, 20, 15),
                                child: Text(
                                  "Book now",
                                  style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: kColorBlack),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
