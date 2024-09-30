// import 'dart:io';
// import 'dart:typed_data';
//
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// import 'image_utils.dart';
//
// class AppImage extends StatelessWidget {
//   final dynamic input;
//   final double? height;
//   final double? width;
//   final BoxFit? fit;
//   final Color? color;
//   final BorderRadius? borderRadius;
//   final Alignment alignment;
//   final Widget? placeholder;
//
//   /// This url handle this case can not get image from local
//   final String? errorImageUrl;
//   final int? memCacheHeight;
//
//   const AppImage(this.input,
//       {Key? key,
//       this.height,
//       this.width,
//       this.color,
//       this.fit,
//       this.memCacheHeight,
//       this.alignment = Alignment.center,
//       this.borderRadius,
//       this.placeholder,
//       this.errorImageUrl})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     if (borderRadius != null) {
//       return ClipRRect(
//         borderRadius: borderRadius ?? BorderRadius.zero,
//         child: _image(),
//       );
//     }
//     return _image();
//   }
//
//   Widget _image() {
//     try {
//       bool isAssetMedia = input.startsWith("assets") ? true : false;
//       bool isNetworkMedia = input.startsWith("http") ? true : false;
//       if (input == null) {
//         return placeholder ??
//             AppImage(
//               AppImages.emptyImage,
//               fit: BoxFit.cover,
//             );
//       } else if (input is Uint8List) {
//         return Image.memory(input as Uint8List,
//             height: height,
//             color: color,
//             width: width,
//             fit: fit,
//             alignment: alignment);
//       } else if (input is! String) {
//         return Container();
//       } else if (input.endsWith('svg')) {
//         if (isNetworkMedia) {
//           // print("Svg Network Image : ${input}");
//           return SvgPicture.network(input,
//               color: color,
//               height: height,
//               width: width,
//               fit: fit ?? BoxFit.contain,
//               alignment: alignment);
//         }
//
//         // print("Svg Asset Image : ${input}");
//         return SvgPicture.asset(input,
//             color: color,
//             height: height,
//             width: width,
//             fit: fit ?? BoxFit.contain,
//             alignment: alignment);
//       } else if (isNetworkMedia) {
//         return CachedNetworkImage(
//             memCacheHeight: memCacheHeight,
//             placeholder: (context, url) {
//               return SizedBox(
//                   width: width,
//                   height: height,
//                   child: const Center(child: CupertinoActivityIndicator()));
//             },
//             errorWidget: (context, url, error) {
//               return const AppImage(AppImages.emptyImage, fit: BoxFit.cover);
//             },
//             imageUrl: input,
//             height: height,
//             width: width,
//             color: color,
//             alignment: alignment,
//             fit: fit);
//       } else if (isAssetMedia) {
//         return Image(
//             image: AssetImage(input),
//             height: height,
//             color: color,
//             width: width,
//             fit: fit,
//             alignment: alignment);
//       } else {
//         return Image.file(File(input), errorBuilder:
//             (BuildContext context, Object error, StackTrace? trace) {
//           return CachedNetworkImage(
//               memCacheHeight: memCacheHeight,
//               placeholder: (context, url) {
//                 return SizedBox(
//                     width: width,
//                     height: height,
//                     child: const Center(child: CupertinoActivityIndicator()));
//               },
//               errorWidget: (context, url, error) {
//                 return const AppImage(AppImages.emptyImage, fit: BoxFit.cover);
//               },
//               imageUrl: errorImageUrl ?? '',
//               height: height,
//               width: width,
//               color: color,
//               alignment: alignment,
//               fit: fit);
//         },
//             height: height,
//             color: color,
//             width: width,
//             fit: fit,
//             alignment: alignment);
//       }
//     } catch (_) {
//       return const SizedBox();
//     }
//   }
// }
