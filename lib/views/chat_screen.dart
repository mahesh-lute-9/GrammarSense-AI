import 'package:ai_grammer_app/views/widgets/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool isConversationStarted = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 15, 16, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(25, 25, 27, 1),
        centerTitle: true,
        title: Text(
          "GrammarSense AI",
          style: GoogleFonts.plusJakartaSans(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        actions: [Icon(Icons.refresh_outlined, color: Colors.white)],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isConversationStarted
                ? Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return index == 0
                          ///USER TEXT
                          ? Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.only(top: 15, left: 50),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(106, 83, 231, 0.1),
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Color.fromRGBO(106, 83, 231, 0.4),
                                ),
                              ),
                              child: Text(
                                "How are you?",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                          ///AI RESPONSE TEXT
                          : Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, right: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/png/Stars_Image.png",
                                    height: 22,
                                    width: 22,
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 0.2),
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        color: Color.fromRGBO(
                                          255,
                                          255,
                                          255,
                                          0.1,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "Your sentence “How are you?” is already grammatically correct!",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                    },
                  ),
                )
                : NoDataWIdget(),

            NoDataWIdget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Check Grammar...",
                        filled: true,
                        fillColor: const Color.fromARGB(25, 25, 27, 1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(106, 83, 231, 1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.send_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
