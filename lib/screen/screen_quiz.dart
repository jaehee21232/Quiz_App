import 'package:flutter/material.dart';
import '../models/model_quiz.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key, required this.quizs});
  List<Quiz> quizs;
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<int> _answers = [-1, -1, -1];
  List<bool> _answerState = [false, false, false, false];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
          child: Container(
        width: width * 0.85,
        height: height * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.deepPurple,
            )),
      )),
    ));
  }
}
