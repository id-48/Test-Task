// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../../utils/colors_utils.dart';
// import '../../utils/image_utils.dart';
// import '../home/home_screen.dart';
// import 'bottom_navigation_bar_controller.dart';
//
// class BottomNavigationScreen extends StatefulWidget {
//   const BottomNavigationScreen({super.key});
//
//   @override
//   State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
// }
//
// class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
//   final BottomNavigationController bottomNavigationController = Get.put(BottomNavigationController(), permanent: false);
//
//   @override
//   void initState() {
//     bottomNavigationController.onInit();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.only(left: 20, right: 20),
//         child: Container(
//             height: 70,
//             decoration: BoxDecoration(
//               color: primaryColor,
//               borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
//             ),
//             child: ClipRRect(
//                 child: Padding(
//               padding: const EdgeInsets.only(left: 20, right: 20, top: 17, bottom: 15),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       bottomNavigationController.changeTabIndex(0);
//                     },
//                     child: Column(
//                       children: [
//                         ImageUtils.svgAssetImages(AppImages.homeIcon, 20, 20),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           'Home',
//                           style: GoogleFonts.inter(fontSize: 9, fontWeight: FontWeight.w700, color: Colors.white),
//                         )
//                       ],
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       bottomNavigationController.changeTabIndex(1);
//                     },
//                     child: Column(
//                       children: [
//                         ImageUtils.svgAssetImages(AppImages.searchIcon, 20, 20),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           'Search',
//                           style: GoogleFonts.inter(fontSize: 9, fontWeight: FontWeight.w700, color: Colors.white),
//                         )
//                       ],
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       bottomNavigationController.changeTabIndex(2);
//                     },
//                     child: Column(
//                       children: [
//                         ImageUtils.svgAssetImages(AppImages.locationIcon, 20, 20),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           'Pin',
//                           style: GoogleFonts.inter(fontSize: 9, fontWeight: FontWeight.w700, color: Colors.white),
//                         )
//                       ],
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       bottomNavigationController.changeTabIndex(3);
//                     },
//                     child: Column(
//                       children: [
//                         ImageUtils.svgAssetImages(AppImages.contactIcon, 20, 20),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           'Contect',
//                           style: GoogleFonts.inter(fontSize: 9, fontWeight: FontWeight.w700, color: Colors.white),
//                         )
//                       ],
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       bottomNavigationController.changeTabIndex(4);
//                     },
//                     child: Column(
//                       children: [
//                         ImageUtils.svgAssetImages(AppImages.personIcon, 20, 20),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           'Profile',
//                           style: GoogleFonts.inter(fontSize: 9, fontWeight: FontWeight.w700, color: Colors.white),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ))),
//       ),
//       body: Obx(() => IndexedStack(
//             index: bottomNavigationController.tabIndex.value,
//             children: [
//               const HomeScreen(),
//               Container(),
//               Container(),
//               Container(),
//               Container(),
//             ],
//           )),
//     );
//   }
// }
