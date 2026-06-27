import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
  final String maintext;
  final String subtext;
  final String logo;
  final double fontsize;
  final double logosize;

  AuthHeading({
    required this.maintext,
    required this.subtext,
    required this.logo,
    required this.fontsize,
    required this.logosize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 70),
        Row(
          children: [
            Text(
              maintext,
              style: GoogleFonts.poppins(
                fontSize: fontsize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: logosize,
              width: logosize,
              child: Image.asset(
                "assets/images/symbol.png",
                filterQuality: FilterQuality.high,
              ),
            ),
          ],
        ),
        Text(
          subtext,
          style: GoogleFonts.poppins(fontSize: 18),
        ),
      ],
    );
  }
}
