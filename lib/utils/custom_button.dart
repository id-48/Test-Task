import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.title, required this.onTap, required this.isGradiant, this.isOutLineButton});

  final void Function()? onTap;
  final String title;
  final bool isGradiant;
  final bool? isOutLineButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            gradient:
            isGradiant ? LinearGradient(colors: [
              Color(0xFFFF816C),
              Color(0xFFFC5A3E),
              Color(0xFFFF5032)
            ]) : null,
            color: isGradiant
                ? null
                : isOutLineButton != null
                ? null
                : Color(0xFF4B4B4B),
            border: isOutLineButton != null ? Border.all(
                color: Color(0xFFB4ADAD)) : null,
            borderRadius: BorderRadius.circular(47)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: isOutLineButton != null
                          ? !isOutLineButton!
                          ? Colors.white
                          : Color(0xFF928F8F)
                          : Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
