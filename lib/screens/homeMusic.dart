import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/screens/music_player.dart';

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
          Positioned(
              top: 415,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Discography",
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(255, 46, 0, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(248, 162, 68, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  )
                ],
              )),
          Positioned(
            top: 443,
            left: 16,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Image.asset('assets/album.png'),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Dead inside",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color:
                                      const Color.fromRGBO(203, 200, 200, 1)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "2020",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color:
                                      const Color.fromRGBO(132, 124, 125, 1)),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Image.asset('assets/album2.png'),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Dead inside",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color:
                                      const Color.fromRGBO(203, 200, 200, 1)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "2020",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color:
                                      const Color.fromRGBO(132, 124, 125, 1)),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Image.asset('assets/album1.png'),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Dead inside",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color:
                                      const Color.fromRGBO(203, 200, 200, 1)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "2020",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color:
                                      const Color.fromRGBO(132, 124, 125, 1)),
                            ),
                          )
                        ],
                      ),
                    ],
                  );
                }),
          ),
          Positioned(
              top: 654,
              left: 20,
              child: Row(
                children: [
                  Text(
                    "Popular singles",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color.fromRGBO(203, 200, 200, 1)),
                  ),
                  const SizedBox(
                    width: 225,
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color.fromRGBO(248, 162, 69, 1)),
                  ),
                ],
              )),
          Container(
            margin: const EdgeInsets.only(top: 700),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MusicPlayer(),
                                ),
                              );
                            },
                            child: Container(
                              height: 72,
                              width: 67,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              )),
                              child: Image.asset('assets/album3.png'),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "We are Chaos",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color:
                                        const Color.fromRGBO(203, 200, 200, 1)),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 30),
                                child: Row(
                                  children: [
                                    Text(
                                      "2023",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: const Color.fromRGBO(
                                              132, 125, 125, 1)),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "*",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: const Color.fromRGBO(
                                              203, 200, 200, 1)),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Easy Living",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: const Color.fromRGBO(
                                              132, 125, 125, 1)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 72,
                            width: 67,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            )),
                            child: Image.asset('assets/album4.png'),
                          ),
                          Column(
                            children: [
                              Text(
                                "We are Chaos",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color:
                                        const Color.fromRGBO(203, 200, 200, 1)),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 30),
                                child: Row(
                                  children: [
                                    Text(
                                      "2023",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: const Color.fromRGBO(
                                              132, 125, 125, 1)),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "*",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: const Color.fromRGBO(
                                              203, 200, 200, 1)),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Easy Living",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: const Color.fromRGBO(
                                              132, 125, 125, 1)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
