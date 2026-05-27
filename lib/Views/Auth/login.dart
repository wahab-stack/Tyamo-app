import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  void loginbtn() {
    print("Button is pressed");
  }

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
                      "Sign-in into Saddam Steel Works",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
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
              controller: _btnController,
              onPressed: loginbtn,
              child: Text('login'),
            ),
          ],
        ),
      ),
    );
  }
}
