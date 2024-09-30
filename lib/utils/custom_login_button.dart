import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton(
      {super.key, required this.title, required this.onTap});

  final void Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 58,
        width: 271,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFFFF816C),
              Color(0xFFFC5A3E),
              Color(0xFFFF5032)
            ]),
            borderRadius: BorderRadius.circular(47)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Text(
                  title,
                  style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 15,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
