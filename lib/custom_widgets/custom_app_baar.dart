// import 'package:find_me/utils/image_utils.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class CustomAppBar extends StatefulWidget {
//   final String pageName;
//   final void Function()? onPressed;
//   final bool isBackButton;
//   const CustomAppBar({super.key, required this.pageName, this.onPressed, this.isBackButton = true});
//
//   @override
//   State<CustomAppBar> createState() => _CustomAppBarState();
// }
//
// class _CustomAppBarState extends State<CustomAppBar> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Container(
//       height: 140,
//       width: double.infinity,
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage(AppImages.blueBgAppBarImage), fit: BoxFit.fill),
//       ),
//       child: Row(
//         children: [
//           const SizedBox(
//             width: 20,
//           ),
//           if(widget.isBackButton)
//           IconButton(
//               onPressed: widget.onPressed ??
//                   () {
//                     Get.back();
//                   },
//               icon: ImageUtils.assetImage(
//                   path: AppImages.aroBackImage, height: 18.0, width: 21.0)),
//           Expanded(
//               child: Text(
//             widget.pageName,
//             style: GoogleFonts.montserrat(
//                 fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
//           )),
//
//           Container(
//             height: 22,
//             width: 22,
//             decoration: const BoxDecoration(
//                 shape: BoxShape.circle,
//                 image: DecorationImage(
//                     image: AssetImage(AppImages.userLogoImage),
//                     fit: BoxFit.fill)),
//           ),
//           const SizedBox(
//             width: 20,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class CustomizeAppBar extends StatelessWidget {
//   final Widget child;
//   final  double? height;
//
//
//   const CustomizeAppBar(
//       {super.key, required this.child,   this.height});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: height ?? 120,
//       width:  double.infinity,
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage(AppImages.blueBgAppBarImage), fit: BoxFit.fill),
//       ),
//       child: child,
//     );
//   }
// }
