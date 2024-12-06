import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  // const AnswerButton(this.answerText, this.onTap ,{super.key});
  const AnswerButton(
      {super.key, 
      required this.answerText, 
      required this.onTap});
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 138, 0, 176),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),
      ),
      onPressed: onTap,
      child: Text(
        textAlign: TextAlign.center,
        answerText
        ),
    );
  }
}
