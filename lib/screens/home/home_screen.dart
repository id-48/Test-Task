import 'dart:ui';

import 'package:demo_ui/routes/app_routes.dart';
import 'package:demo_ui/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/image_utils.dart';
import 'home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put<HomeController>(HomeController());

  @override
  void initState() {
    // WidgetsBinding.instance!.addObserver(this);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.grey.shade200,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: Get.height * 0.32,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.send,
                                      size: 15,
                                      color: kColorWhite,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "Norway",
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: kColorWhite),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.account_circle_outlined,
                                  size: 25,
                                  color: kColorWhite,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "Hey, Martin! Tell us where you want to go",
                                style: GoogleFonts.inter(fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: kColorWhite),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  // Set border radius
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 15.0, sigmaY: 15.0),
                                    // Blur intensity
                                    child: Container(
                                      height: 60,
                                      // Set height of the blurred container
                                      decoration: BoxDecoration(
                                        color: kColorWhite.withOpacity(0.2),
                                        // Transparent background
                                        borderRadius: BorderRadius.circular(
                                            50), // Same border radius as clip
                                      ),
                                    ),
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                        Icons.search, color: kColorWhite),
                                    // Prefix icon
                                    hintText: 'Search places...',
                                    hintStyle: GoogleFonts.poppins(
                                        color: kColorWhite.withOpacity(0.7),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                    // Hint text color
                                    filled: true,
                                    fillColor: Colors.transparent,
                                    // Make TextField itself transparent
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      // Border radius for the TextField
                                      borderSide: BorderSide
                                          .none, // Remove default borders
                                    ),
                                  ),
                                  style: TextStyle(
                                      color: kColorWhite), // Text color
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: Text(
                        "The most relevant",
                        style: GoogleFonts.inter(fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: kColorBlack),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.40,
                      child: MediaQuery.removePadding(
                        removeTop: true,
                        context: context,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Get.toNamed(AppRoutes.itemDetails);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: kColorWhite,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Container(
                                          width: Get.width * 0.84,
                                          height: Get.height * 0.26,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(30),
                                              image: const DecorationImage(
                                                  image: AssetImage(AppImages
                                                      .homeLeavingView),
                                                  fit: BoxFit.fill)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(15),
                                            child: Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.black45,
                                                    borderRadius: BorderRadius
                                                        .circular(20),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .all(8.0),
                                                    child: Icon(
                                                      Icons.favorite_border,
                                                      color: kColorWhite,
                                                    ),
                                                  )),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment
                                                .start,
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .spaceAround,
                                                children: [
                                                  Text(
                                                    "Tiny home in Raelingen",
                                                    style: GoogleFonts.inter(
                                                        fontSize: 12,
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        color: kColorBlack),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        size: 15,
                                                        color: kColorBlack,
                                                      ),
                                                      Text(
                                                        "4.55 (217)",
                                                        style: GoogleFonts
                                                            .inter(
                                                            fontSize: 12,
                                                            fontWeight: FontWeight
                                                                .w400,
                                                            color: kColorBlack),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5, bottom: 5),
                                                child: Text(
                                                  "4 guests . 2 bedrooms . 2 beds . 1 bathroom",
                                                  style: GoogleFonts.inter(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight
                                                          .w400,
                                                      color: kColorGrey),
                                                ),
                                              ),
                                              Text(
                                                "\$91 night",
                                                style: GoogleFonts.inter(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: kColorBlack),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: Text(
                        "Discover new places",
                        style: GoogleFonts.inter(fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: kColorBlack),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.24,
                      child: MediaQuery.removePadding(
                        removeTop: true,
                        context: context,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  width: Get.width * 0.40,
                                  height: Get.height * 0.22,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              AppImages.homeLeavingView),
                                          fit: BoxFit.fill)),
                                ),
                              );
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50), // Set border radius
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                    // Blur intensity
                    child: Container(
                      height: 60, // Set height of the blurred container
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        // Transparent background
                        borderRadius: BorderRadius.circular(
                            50), // Same border radius as clip
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            customBottomBarItem(
                              title: 'Discover',
                              icon: Icons.access_time_rounded,
                            ),
                            customBottomBarItem(
                              title: 'Bookings',
                              icon: Icons.book,
                            ),
                            customBottomBarItem(
                              title: 'Favorites',
                              icon: Icons.favorite_border,
                            ),
                            customBottomBarItem(
                              title: 'Massages',
                              icon: Icons.message,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget customBottomBarItem({required String title, required IconData icon}) {
    return Column(
      children: [
        Icon(
          Icons.chat_bubble_outline,
          color: kColorGrey,
          size: 20,
        ),
        Text(
          "Massages",
          style: GoogleFonts.poppins(
              fontSize: 10, fontWeight: FontWeight.w400, color: kColorGrey),
        ),
      ],
    );
  }
}
