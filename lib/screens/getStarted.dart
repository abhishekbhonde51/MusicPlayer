import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/screens/homeMusic.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/spiderman.png'),
            ],
          ),
          Column(
            children: [
              Container(
                height: 421,
                width: 485,
                margin: const EdgeInsets.only(
                    top: 100), // Adjust this margin as needed
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(10, 450),
                      blurRadius: 1000,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 500, // Adjust this position as needed
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Dancing between",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 36,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                Text(
                  "The shadows",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 36,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                Text(
                  "Of rhythm",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 36,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MusicHome(),
                ),
              );
            },
            child: Positioned(
              // top: 630,
              // left: 75,
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 80),
                  width: 261,
                  height: 47,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 46, 0, 1),
                      borderRadius: BorderRadius.all(Radius.circular(19))),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 683,
            left: 75,
            child: Center(
              child: Container(
                width: 261,
                height: 47,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(19)),
                    border: Border.all(color: Colors.red, width: 2)),
                child: Center(
                  child: Text(
                    "Continue with Email",
                    style: GoogleFonts.inter(
                        color: const Color.fromARGB(255, 253, 0, 0),
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 741,
              left: 90,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 248,
                  height: 54,
                  child: Center(
                    child: Text(
                      "by continuing you agree to terms ",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(203, 200, 200, 1)),
                    ),
                  ),
                ),
              )),
          Positioned(
              top: 758,
              left: 91,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 248,
                  height: 54,
                  child: Center(
                    child: Text(
                      "of services and  Privacy policy",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(203, 200, 200, 1)),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
