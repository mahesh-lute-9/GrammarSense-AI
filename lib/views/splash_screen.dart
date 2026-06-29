import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 15, 16, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromRGBO(106, 83, 231, 1),
                  ),
                  child: Image.asset(
                    "assets/images/png/BagIcon.png",
                    fit: BoxFit.cover,
                  ),
                ),

                Positioned(
                  right: -15,
                  top: -20,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(15, 15, 16, 1),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/images/png/Stars_Image.png"),
                  ),
                ),
              ],
            ),

            SizedBox(height: 25),
            Text(
              "Welcome to",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 28,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "GrammerSense AI",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(106, 83, 231, 1),
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Check Grammer Every Words & Sentences",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(125, 124, 130, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
