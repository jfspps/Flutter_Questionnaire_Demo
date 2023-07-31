import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          const Text(
            'Questionnaire app',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: () {},
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
