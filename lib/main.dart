import 'package:flutter/material.dart';
import 'package:music_player/screens/getStarted.dart';
// import 'package:music_player/views/getstarted.dart'; // Ensure the import path is correct

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStarted(),
    );
  }
}
