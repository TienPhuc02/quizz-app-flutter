import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizzler_flutter/question.dart';
import 'package:quizzler_flutter/quizz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Center(
            child: Text("Quizzler App"),
          ),
        ),
        body: const BodyHomeScreen(),
      ),
    );
  }
}

class BodyHomeScreen extends StatefulWidget {
  const BodyHomeScreen({super.key});
  @override
  State<BodyHomeScreen> createState() => _BodyHomeScreenState();
}

class _BodyHomeScreenState extends State<BodyHomeScreen> {
  @override
  List<Widget> arrayIconCheckList = <Widget>[];
  Quizz quizz = Quizz();

  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(10, 300, 0, 100),
              child: Center(
                child: Text(
                  quizz.getQuestionText(),
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                arrayIconCheckList.add(
                  const Icon(
                    FontAwesomeIcons.check,
                    color: Colors.green,
                  ),
                );
                bool correctAnswer = quizz.getAnwserQuestion();
                if (correctAnswer == true) {
                  print("Bạn trả lời đúng");
                } else {
                  print("Bạn trả lời sai");
                }
                setState(() {
                  quizz.nextQuestion();
                });
              },
              child: Container(
                color: Colors.green,
                margin: const EdgeInsets.only(bottom: 40),
                padding: const EdgeInsets.fromLTRB(130, 30, 130, 30),
                child: const Text(
                  "True",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                arrayIconCheckList.add(
                  const Icon(
                    FontAwesomeIcons.xmark,
                    color: Colors.red,
                  ),
                );
                bool correctAnswer = quizz.getAnwserQuestion();
                if (correctAnswer == false) {
                  print("Bạn trả lời đúng");
                } else {
                  print("Bạn trả lời sai");
                }
                setState(() {
                  quizz.nextQuestion();
                });
              },
              child: Container(
                color: Colors.red,
                margin: const EdgeInsets.only(bottom: 40),
                padding: const EdgeInsets.fromLTRB(125, 30, 125, 30),
                child: const Text(
                  "False",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Row(
              children: arrayIconCheckList,
            )
          ],
        ),
      ),
    );
  }
}
