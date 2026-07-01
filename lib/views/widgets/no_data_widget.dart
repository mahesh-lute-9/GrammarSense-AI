import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoDataWIdget extends StatelessWidget {
  const NoDataWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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

          SizedBox(height: 20),

          Text(
            "How Can I Help You?",
            style: GoogleFonts.plusJakartaSans(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(125, 124, 130, 1),
            ),
          ),
        ],
      ),
    );
  }
}
