import 'package:flutter/material.dart';

/// Custom MaterialApp widget that applies a top-right to bottom-left gradient, with the
/// CustomText widget styling in place.
class CustomMaterialAppWidget extends StatelessWidget {
  // this is needed for all widgets; params in curly braces are named arguments;
  // here we pass the Widget key to the StatelessWidget parent instance field "key"
  const CustomMaterialAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // pass the MaterialApp widget https://api.flutter.dev/flutter/material/MaterialApp-class.html

    // nest widgets, with MaterialApp being the parent widget;
    // also demonstrated are named arguments (as opposed to position arguments found in C based languages)
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Colors.deepPurpleAccent),
          child: Center(
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
          ),
        ),
      ),
    );
  }
}
