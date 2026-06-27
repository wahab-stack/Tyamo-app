import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tyamo/Views/Widgets/Auth/Auth_heading.dart';
import 'package:tyamo/Views/Widgets/Auth/Auth_text_field.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  final RoundedLoadingButtonController _LoginBtnController =
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
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            new AuthHeading(
              maintext: "Sign-in into Indus Steel Works",
              subtext: "To connect with Your partner",
              logo: "assets/images/symbol.png",
              fontsize: 18,
              logosize: 30,
            ),
            SizedBox(height: 30),
            AuthTextField(
              size: 15,
              icon: Icons.alternate_email,
              keyboardType: TextInputType.emailAddress,
              labelText: "Email",
              obscureText: false,
            ),
            SizedBox(height: 15),
            AuthTextField(
              size: 15,
              icon: Icons.password,
              keyboardType: TextInputType.text,
              labelText: "Password",
              obscureText: true,
            ),
            SizedBox(height: 30),
            RoundedLoadingButton(
              width: 2000,
              borderRadius: 10,
              controller: _LoginBtnController,
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
