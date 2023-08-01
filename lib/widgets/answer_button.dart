import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String buttonText;
  final void Function() onPress;

  // for example sake, assign fields as positional arguments (which are optional);
  // final fields must be assigned, hence positional arguments are made mandatory
  // by marking with the required keyword
  const AnswerButton({
    required this.buttonText,
    required this.onPress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: Colors.white12,
        foregroundColor: Colors.lightGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      onPressed: onPress,
      child: Text(
        buttonText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
