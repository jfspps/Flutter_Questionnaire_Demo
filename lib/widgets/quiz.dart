import 'package:flutter/material.dart';
import 'package:questionnaire/widgets/homepage.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Colors.deepPurpleAccent),
          child: const HomePage(),
        ),
      ),
    );
  }
}
