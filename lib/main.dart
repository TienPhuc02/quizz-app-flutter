import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizzler_flutter/quizz.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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
  List<Widget> arrayIconCheckList = <Widget>[];
  Quizz quizz = Quizz();

  void checkAnswer(bool userPickedAnswer) {
    if (quizz.isFinished()) {
      // Show an alert and reset the quiz if all questions are answered.
      Alert(
        context: context,
        title: "Quiz Completed",
        desc: "You have completed the quiz.",
        buttons: [
          DialogButton(
            child: const Text("Restart Quiz"),
            onPressed: () {
              setState(() {
                quizz.reset();
                arrayIconCheckList.clear();
              });
              Navigator.pop(context); // Close the alert dialog
            },
          ),
        ],
      ).show();
    } else {
      if (userPickedAnswer == true) {
        arrayIconCheckList.add(
          const Icon(
            FontAwesomeIcons.check,
            color: Colors.green,
          ),
        );
      } else {
        arrayIconCheckList.add(
          const Icon(
            FontAwesomeIcons.times,
            color: Colors.red,
          ),
        );
      }
      bool correctAnswer = quizz.getAnwserQuestion();
      if (userPickedAnswer == correctAnswer) {
        print("Bạn trả lời đúng");
      } else {
        print("Bạn trả lời sai");
      }
      setState(() {
        quizz.nextQuestion();
      });
    }
  }

  @override
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
                checkAnswer(true);
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
                checkAnswer(false);
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
