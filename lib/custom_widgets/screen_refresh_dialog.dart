import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenRefreshDialog {
  static screenRefresh({required Function() refreshOnTap}) {
    return Get.dialog(
        AlertDialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 00, vertical: 0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0))),
          content: Builder(builder: (context) {
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(colors: [
                    Color(0xffFFFFFF),
                    Color(0xffFFE5E5),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 16),
                        child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(
                              Icons.close,
                              color: Color(0xff777171),
                              size: 25,
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Text(
                      "Do you want to Refresh this screen?",
                      style: GoogleFonts.heebo(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Row(
                      children: [
                        Expanded(
                            child: buttonDialog(
                                text: "Yes",
                                bgColor: const Color(0xff3CCF95),
                                padding:
                                const EdgeInsets.symmetric(vertical: 6),
                                onTap: refreshOnTap)),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: buttonDialog(
                                text: "No",
                                bgColor: const Color(0xffEE4652),
                                padding:
                                const EdgeInsets.symmetric(vertical: 6),
                                onTap: () => Get.back())),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            );
          }),
        ),
        barrierDismissible: true);
  }
}

Widget buttonDialog(
    {required Color bgColor, required EdgeInsetsGeometry padding, required String text, void Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: padding,
      alignment: Alignment.center,
      decoration:
      BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(6)),
      child: Text(
        text,
        style: GoogleFonts.heebo(
            fontSize: 12.4, fontWeight: FontWeight.w700, color: Colors.white),
      ),
    ),
  );
}
