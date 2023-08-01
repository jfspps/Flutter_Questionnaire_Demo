import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.questionPageFunction, {super.key});

  final void Function() questionPageFunction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 200,
            // add transparency via a white ARGB (use this in preference
            // the Opacity widget, which is more resource demanding)
            color: const Color.fromARGB(128, 255, 255, 255),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Questionnaire app',
            style: GoogleFonts.lato(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            // set onPressed to the pointer of questionPageFunction,
            // not as an anonymous method
            onPressed: questionPageFunction,
            icon: const Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
            ),
            label: const Text(
              'Outlined button',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
