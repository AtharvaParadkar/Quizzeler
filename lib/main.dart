// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'quizbrain.dart';

void main() => runApp(const MyApp());

QuizBrain quizbrain=QuizBrain();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            'Quiz',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> score = [];

  // List<String> questions = [
  //   'You can lead a cow downstairs but not upstairs.',
  //   'Approximately one quarter of a human bone are in the feet.',
  //   'A Slug\'s blood is green.',
  // ];

  // List<bool> answers = [
  //   false,
  //   true,
  //   true,
  // ];

  

  //^ Object
  // Questions q1 = Questions(
  //     qText: 'You can lead a cow downstairs but not upstairs.', qAnswer: false);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                quizbrain.getQueText(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: TextButton(
            onPressed: () {
              bool correctanswers = quizbrain.getQueAns();
              if (correctanswers == true) {
                score.add(
                  const Icon(
                    Icons.check,
                    color: Color.fromARGB(255, 0, 255, 0),
                  ),
                );
              } else {
                score.add(
                  const Icon(
                    Icons.close,
                    color: Color.fromARGB(255, 244, 0, 0),
                  ),
                );
              }
              setState(() {
                quizbrain.nextque();
              });
            },
            style: TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 0, 255, 0)),
            child: const Text(
              'TRUE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: TextButton(
            onPressed: () {
              bool correctanswers = quizbrain.getQueAns();
              if (correctanswers == false) {
                score.add(
                  const Icon(
                    Icons.check,
                    color: Color.fromARGB(255, 0, 255, 0),
                  ),
                );
              } else {
                score.add(
                  const Icon(
                    Icons.close,
                    color: Color.fromARGB(255, 255,0, 0),
                  ),
                );
              }
              setState(() {
                quizbrain.nextque();
              });
            },
            style: TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 255, 0, 0)),
            child: const Text(
              'FALSE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Row(
          children: score,
        ),
      ],
    );
  }
}
