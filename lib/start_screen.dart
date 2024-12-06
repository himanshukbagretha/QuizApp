import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ), one way of image opacity

          Image.asset(
            'assets/images/quiz-logo.png',
            width: 400,
            color: const Color.fromARGB(
                150, 255, 255, 255), // other way to transparent an image
          ),
          const SizedBox(
            height: 60,
          ),
           Text(
            'How well you know India!',
            style: GoogleFonts.lato(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              //child to labe when using icon
              'Start Quiz',
              // style: TextStyle(
              //   color: Colors.white,
              //   fontSize: 16,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
