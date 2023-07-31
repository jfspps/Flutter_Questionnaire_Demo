import 'package:flutter/cupertino.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionPage();
  }
}

class _QuestionPage extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      "And our surveys says?!?",
    );
  }
}
