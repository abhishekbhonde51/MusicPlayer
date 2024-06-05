import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      body: Stack(
        children: [
          Positioned(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset('./assets/musicplayer.png')],
            ),
          ),
          Positioned(
            top: 465,
            left: 94,
            child: Container(
              width: 221,
              height: 87,
              child: Column(
                children: [
                  Text(
                    "Alone in the Abyss",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: const Color.fromRGBO(230, 154, 21, 1),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Youlakou",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 586,
            height: 175,
            margin:
                const EdgeInsets.only(top: 480), // Adjust this margin as needed
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50, // Reduced blur radius
                  color: Colors.black.withOpacity(0.5), // Reduced opacity
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 550, left: 360),
            child: const Icon(
              Icons.share,
              color: Color.fromRGBO(230, 154, 21, 1),
              size: 24, // Adjust size if needed
            ),
          ),
          Positioned(
              top: 600,
              left: 17,
              child: Row(
                children: [
                  Text(
                    "Dynamic Warmup |",
                    style: GoogleFonts.notoSerifGeorgian(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  Text(
                    "4 min",
                    style: GoogleFonts.notoSerifGeorgian(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white),
                  )
                ],
              )),
          Positioned(
              top: 640,
              left: 14,
              child: Container(
                height: 6,
                width: 97,
                color: const Color.fromRGBO(230, 154, 21, 1),
              )),
          Positioned(
              top: 640,
              left: 14,
              child: Container(
                height: 6,
                width: 370,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromRGBO(217, 217, 217, 0.19))),
              )),
          Container(
            margin: const EdgeInsets.only(top: 660),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.shuffle,
                  size: 20,
                  color: Colors.white,
                ),
                Icon(
                  Icons.arrow_back_ios_new_sharp,
                  size: 20,
                  color: Colors.white,
                ),
                Icon(
                  Icons.play_circle_filled,
                  size: 50,
                  color: Colors.white,
                ),
                Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 25,
                  color: Colors.white,
                ),
                Icon(
                  Icons.volume_down_rounded,
                  size: 24,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
