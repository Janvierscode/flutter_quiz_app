import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.chosenAnswers, super.key});
  final List<String> chosenAnswers;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summaryData = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summaryData.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(40.0),
      child: Column(
        children: [
          const Text('Congratulations! You have completed the quiz!'),
          const Text('You answered 5 out of 5 questions correctly!'),
          const SizedBox(
            height: 30.0,
          ),
          const Text('List of questions and answers:'),
          const SizedBox(
            height: 30.0,
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
