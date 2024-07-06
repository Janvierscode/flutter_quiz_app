import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Quiz App',
      home: Quiz(),
    );
  }
}
