import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizzler_flutter/question.dart';

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
  // List<String> arrayQuestionData = <String>[
  //   "Con người có 5 ngón tay trên mỗi tay.",
  //   "Trái đất quay quanh Mặt Trời. ",
  //   "Gọi là nước sôi ở mức 100 độ C (212 độ F) dưới áp suất tiêu chuẩn."
  // ];
  // List<bool> arrayAnswer = [true, true, true];
  // Question q1 = Question(q: "Con người có 5 ngón tay trên mỗi tay.", a: true);
  List<Question> arrayListQuestion = [
    Question(q: "Con người có 5 ngón tay trên mỗi tay.", a: true),
    Question(q: "Trái đất quay quanh Mặt Trời. ", a: true),
    Question(
        q: "Gọi là nước sôi ở mức 100 độ C (212 độ F) dưới áp suất tiêu chuẩn.",
        a: true),
  ];
  int numberQuestion = 0;
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(10, 300, 0, 100),
              child: Center(
                child: Text(
                  arrayListQuestion[numberQuestion].questionText,
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
                bool correctAnswer =
                    arrayListQuestion[numberQuestion].questionAnswer;
                if (correctAnswer == true) {
                  print("Bạn trả lời đúng");
                } else {
                  print("Bạn trả lời sai");
                }
                setState(() {
                  numberQuestion++;
                  print(numberQuestion);
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
                bool correctAnswer =
                    arrayListQuestion[numberQuestion].questionAnswer;
                if (correctAnswer == false) {
                  print("Bạn trả lời đúng");
                } else {
                  print("Bạn trả lời sai");
                }
                setState(() {
                  numberQuestion++;
                  print(numberQuestion);
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

// Con người có 5 ngón tay trên mỗi tay. (Đúng)
// Trái đất quay quanh Mặt Trời. (Đúng)
// Cái gọi là nước sôi ở mức 100 độ C (212 độ F) dưới áp suất tiêu chuẩn. (Đúng)
// Mặt trăng có ánh sáng tự nhiên. (Sai)
// Cá heo là một loài cá. (Sai)
// Sói là một loài động vật ăn cỏ. (Sai)
// Nước đáng sợ là một loại hóa chất độc hại. (Sai)
// Mưa bão luôn xuất phát từ biển. (Đúng)
// Nước biển mặn hơn nước mưa. (Đúng)
// Bắc cực là nơi lạnh nhất trên trái đất. (Đúng)
// Nước đáng sợ là một loại hóa chất độc hại. (Sai)
// Con người chỉ sử dụng 10% bộ não của họ. (Sai)
// Chuột có một cuộc sống ngắn hơn khi sống trong tự nhiên so với trong môi trường nhà cửa. (Sai)
// Hoa hồng là loài hoa có màu trắng duy nhất. (Sai)
// Nước đáng sợ là một loại hóa chất độc hại. (Sai)
// Trái đất có một mặt trời và một mặt mặt trăng. (Sai)
// Động vật không có khả năng cảm thụ màu. (Sai)
// Rồng là một loài động vật có thực. (Sai)
// Bạch tuộc có ba tim. (Sai)
// Cá voi là loài động vật biển lớn nhất. (Đúng)
