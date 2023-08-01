import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    // build a SizedBox of maximum width and then centre column child widgets
    // along the column's main axis
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Some question'),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'A possible answer',
            ),
          )
        ],
      ),
    );
  }
}
