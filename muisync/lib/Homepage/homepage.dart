import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MuiSync",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(color: Colors.black),
          ),
        ),
      ),

      body: Stack(
        children: [
          // Join Room Button - Top Left
          Positioned(
            top: screenHeight * 0.5,
            left: screenWidth * 0.5,
            child: ElevatedButton(
              onPressed: () {
                // TODO: Join room logic
              },
              child: const Text("Join Room"),
            ),
          ),

          // Create Room Button - Top Right
          Positioned(
            top: screenHeight * 0.05,
            right: screenWidth * 0.05,
            child: ElevatedButton(
              onPressed: () {
                // TODO: Create room logic
              },
              child: const Text("Create Room"),
            ),
          ),

          // Lottie Animation in Center
          Center(
            child: SizedBox(
              width: screenWidth * 0.6,
              height: screenHeight * 0.4,
              child: Lottie.asset(
                'assets/astronaut_music.lottie', // Replace with your animation file
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
