import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImages {

  static const String homeLeavingView = "assets/images/home_leaving_view.jpg";
}

class ImageUtils {
  static assetImage(
      {required String path, double? height, double? width, double? scale, BoxFit? fit, Color? color}) {
    return Image.asset(path, height: height,
        width: width,
        scale: scale,
        fit: fit,
        color: color);
  }

  static networkImage(
      {required String url, double? height, double? width, BoxFit? fit, Color? color}) {
    return url.isNotEmpty
        ? CachedNetworkImage(
      imageUrl: url,
      height: height,
      width: width,
      fit: fit,
      color: color,
      placeholder: (context, url) =>
      const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) =>
      const SizedBox(
          width: 15, height: 15, child: Center(child: Icon(Icons.error))),
    )
        : const Center(
      child: SizedBox(
          width: 15, height: 15, child: Center(child: Icon(Icons.error))),
    );
  }

  static svgAssetImages(String path, double? height, double? width,
      {Color? color}) {
    return SvgPicture.asset(
      path,
      width: width,
      height: height,
      color: color,
    );
  }

  static fileImages(String path, double? height, double? width,
      {Color? color}) {
    return Image.file(
      File(path),
      width: width,
      height: height,
      color: color,
    );
  }

  static svgNetworkImages(
      {required String url, double? height, double? width}) {
    return SvgPicture.network(
      url,
      width: width,
      height: height,
      fit: BoxFit.fill,
      // placeholderBuilder: (BuildContext context) => Container(
      //     padding: const EdgeInsets.all(30.0),
      //     child: const CircularProgressIndicator(
      //      // backgroundColor: Colors.redAccent,
      //     )),
    );
  }
}
