// import 'package:find_me/utils/preference_key_utils.dart';
// import 'package:find_me/utils/preference_utils.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:permission_handler/permission_handler.dart';
//
// import '../routes/app_routes.dart';
//
// //
// // Future<void> requestLocationPermission() async {
// //   // Request foreground location permission
// //   var status = await Permission.location.request();
// //
// //   if (status.isGranted) {
// //   } else {
// //     bool isPermanentlyDenied = await Permission.location.isPermanentlyDenied;
// //     if (isPermanentlyDenied) {
// //       await openAppSettings();
// //     }
// //   }
// //   // else if (status.isDenied) {
// //   //   await openAppSettings();
// //   // } else if (status.isPermanentlyDenied) {
// //   //   await openAppSettings();
// //   // } else if (status.reactive.status.isError) {
// //   //   print("Foreground location permission denied");
// //   // }
// // }
//
// Future<void> checkLocationPermission() async {
//   PermissionStatus status = await Permission.location.status;
//
//   print('PERMIttion popup ====== ${status.name}');
//   if (status.isGranted) {
//     bool isLocationServiceEnabled = await Permission.location.serviceStatus.isEnabled;
//     if (isLocationServiceEnabled) {
//       if (getString(prefUserToken).isNotEmpty) {
//         Get.offAndToNamed(AppRoutes.home);
//       } else {
//         Get.offAndToNamed(AppRoutes.login);
//       }
//     } else {
//       _requestLocationPermission();
//     }
//     // Permission is already granted, you can proceed
//   } else {
//     _requestLocationPermission();
//   }
// }
//
// Future<void> checkHomePagePermission() async {
//   PermissionStatus status = await Permission.location.request();
//   print('statusstatus ::${status.name}');
//
//   if (status.isGranted) {
//     bool isLocationServiceEnabled = await Permission.location.serviceStatus.isEnabled;
//     if (isLocationServiceEnabled) {
//       print('Location services anabled====');
//     } else {
//       PermissionStatus status = await Permission.location.request();
//
//       if (status.isGranted) {
//       } else {
//         bool isPermanentlyDenied = await Permission.location.isPermanentlyDenied;
//         if (isPermanentlyDenied) {
//           await openAppSettings();
//         }
//       }
//     }
//   }
// }
//
// Future<void> _requestLocationPermission() async {
//   PermissionStatus status = await Permission.location.request();
//
//   print('status ::${status.name}');
//   if (status.isGranted) {
//     print('Location services isGranted====');
//
//     // Permission granted, proceed to next screen
//     if (getString(prefUserToken).isNotEmpty) {
//       Get.offAndToNamed(AppRoutes.home);
//     } else {
//       Get.offAndToNamed(AppRoutes.login);
//     }
//   } else {
//     // Permission denied, open app settings
//     bool isPermanentlyDenied = await Permission.location.isPermanentlyDenied;
//     if (isPermanentlyDenied) {
//       await openAppSettings();
//     }
//   }
// }
