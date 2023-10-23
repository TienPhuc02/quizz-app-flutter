import "package:quizzler_flutter/question.dart";
import 'package:quizzler_flutter/question.dart';

class Quizz {
  int _numberQuestion = 0;
  final List<Question> _arrayListQuestion = [
    Question(q: "Con người có 5 ngón tay trên mỗi tay.", a: true),
    Question(q: "Trái đất quay quanh Mặt Trời. ", a: true),
    Question(q: "Mặt trăng có ánh sáng tự nhiên.", a: false),
    Question(
        q: "Gọi là nước sôi ở mức 100 độ C (212 độ F) dưới áp suất tiêu chuẩn.",
        a: true),
    Question(q: " Cá heo là một loài cá.", a: false),
    Question(q: "Sói là một loài động vật ăn cỏ.", a: false),
    Question(q: "Nước là một loại hóa chất độc hại. ", a: false),
    Question(q: "Con người chỉ sử dụng 10% bộ não của họ.", a: false),
    Question(
        q: "Chuột có một cuộc sống ngắn hơn khi sống trong tự nhiên so với trong môi trường nhà cửa.",
        a: false),
    Question(q: "Hoa hồng là loài hoa có màu trắng duy nhất.", a: false),
    Question(q: "Rồng là một loài động vật có thực. ", a: false),
    Question(q: "Cá voi là loài động vật biển lớn nhất. ", a: true),
    Question(q: " Bắc cực là nơi lạnh nhất trên trái đất.", a: false),
  ];
  void nextQuestion() {
    if (_numberQuestion < _arrayListQuestion.length - 1) {
      _numberQuestion++;
    } else {
      _numberQuestion = 0;
    }
  }

  String getQuestionText() {
    return _arrayListQuestion[_numberQuestion].questionText;
  }

  bool getAnwserQuestion() {
    return _arrayListQuestion[_numberQuestion].questionAnswer;
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
