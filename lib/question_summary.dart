import 'package:flutter/cupertino.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: summaryData.map(
      (data) {
        return Row(
          children: [
            Text(((data['question_index'] as int) + 1).toString()),
            Expanded(
              child: Column(
                children: [
                  Text(data['question'] as String),
                  const SizedBox(height: 5.0),
                  Text('Your answer: ${data['user_answer']}'),
                  Text('Correct answer: ${data['correct_answer']}'),
                ],
              ),
            )
          ],
        );
      },
    ).toList());
  }
}
