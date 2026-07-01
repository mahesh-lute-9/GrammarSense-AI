import 'package:ai_grammer_app/views/chat_screen.dart';
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
            Spacer(),

            ///STACK
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

                ///Positioned
                Positioned(
                  right: -15,
                  top: -25,
                  child: Container(
                    padding: EdgeInsets.all(7),
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
                fontSize: 26,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "GrammarSense AI",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 29,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(106, 83, 231, 1),
              ),
            ),

            SizedBox(height: 40),

            Text(
              "Write Smarter. Communicate Better.",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(124, 125, 130, 1),
              ),
            ),

            Spacer(),

            ///GET STARTED BUTTON
            ///GestureDetector
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ChatScreen();
                    },
                  ),
                );
              },
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(106, 83, 231, 1),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
