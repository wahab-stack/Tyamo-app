import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  // Login({super.key});
  // void loginbtn() {
  //   print("Button is pressed");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Indus Steel Works",
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70),
                Row(
                  children: [
                    Text(
                      "Sign-in into Indus Steel Works",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        "assets/images/symbol.png",
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ],
                ),
                Text(
                  "To connect with Your partner",
                  style: GoogleFonts.poppins(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 30),
            TextField(
              textInputAction: TextInputAction.none,
              textAlign: TextAlign.start,
              obscureText: false,
              autofocus: false,
              style: GoogleFonts.poppins(fontSize: 15),
              keyboardType: TextInputType.emailAddress,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                fillColor: Color(0xffE7E7F2),
                filled: true,
                prefixIcon: Icon(Icons.alternate_email, size: 15),
                prefixIconColor: Color(0xff000221),
                label: Text("Email"),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              textInputAction: TextInputAction.none,
              textAlign: TextAlign.start,
              obscureText: true,
              autofocus: false,
              style: GoogleFonts.poppins(fontSize: 15),
              keyboardType: TextInputType.text,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                fillColor: Color(0xffE7E7F2),
                filled: true,
                prefixIcon: Icon(Icons.alternate_email, size: 15),
                prefixIconColor: Color(0xff000221),
                label: Text("Password"),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 30),
            RoundedLoadingButton(
              width: 2000,
              borderRadius: 10,
              controller: _btnController,
              color: Color(0xff00C1AA),
              onPressed: () {},
              child: Text(
                'Login',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Forget Password?",
                style: GoogleFonts.poppins(
                  color: const Color(0xffC1272D),
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: const Color(0xff5A5858),
                  ),
                ),
                Text(
                  "Sign Up",
                  style: GoogleFonts.poppins(
                    color: const Color(0xff2F76EA),
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
