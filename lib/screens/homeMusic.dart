import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicHome extends StatefulWidget {
  const MusicHome({super.key});

  @override
  State<MusicHome> createState() => _MusicHomeState();
}

class _MusicHomeState extends State<MusicHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      body: Stack(
        children: [
          // Image at the bottom layer
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset("assets/musichome.png")],
          ),
          // Shadow container positioned above the image but below the text
          Column(
            children: [
              Container(
                width: 586,
                height: 175,
                margin: const EdgeInsets.only(
                    top: 100), // Adjust this margin as needed
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(10, 200),
                      blurRadius: 50, // Reduced blur radius
                      color: Colors.black.withOpacity(0.6), // Reduced opacity
                    )
                  ],
                ),
              ),
            ],
          ),

          // Text and subscribe button at the top layer
          Positioned(
            top: 245,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "A.L.O.N.E",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 36,
                      color: Colors.white),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // Add your onTap code here
                  },
                  child: Container(
                    width: 127,
                    height: 37,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 46, 0, 1),
                      borderRadius: BorderRadius.all(Radius.circular(19)),
                    ),
                    child: Center(
                      child: Text(
                        "Subscribe",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color.fromRGBO(19, 19, 19, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
