import 'package:flutter/material.dart';

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
            Container(
              height: 240,
              width: 240,
              decoration: BoxDecoration(
                color: const Color(0xFF16161F),
                borderRadius: BorderRadius.circular(36),
                border: Border.all(
                  color: Colors.white.withOpacity(0.05),
                  width: 1,
                ), // Smooth cut corners
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF6A53E7).withOpacity(0.20),
                    blurRadius: 25,
                    spreadRadius: 1,
                  ),
                ],
              ),
              padding: const EdgeInsets.all(6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: Image.asset(
                  "assets/images/png/GrammarSense_AI.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
