import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({required this.startQuiz, super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',
              width: 300, color: Colors.white38),
          const SizedBox(
            height: 70.0,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lora(
              fontSize: 24.0,
              color: Colors.white60,
            ),
          ),
          const SizedBox(height: 16.0),
          OutlinedButton.icon(
            onPressed: startQuiz,
            label: const Text('Start Quiz'),
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white54,
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                side: const BorderSide(color: Color(0x7B9C27B0))),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
