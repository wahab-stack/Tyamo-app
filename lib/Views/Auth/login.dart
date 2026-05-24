import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Saddam Steel Works",
          style: GoogleFonts.arOneSans(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff000221),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 70),
                Row(
                  children: [
                    Text(
                      "Sign-in into Saddam Steel Works",
                      style: GoogleFonts.arOneSans(fontSize: 18),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        "assets/images/symbol.png",
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
