import "package:quizzler_flutter/question.dart";

class Quizz {
  int _numberQuestion = 0;
  final List<Question> _arrayListQuestion = [
    Question("Con người có 5 ngón tay trên mỗi tay.", true),
    Question("Trái đất quay quanh Mặt Trời. ", true),
    Question("Mặt trăng có ánh sáng tự nhiên.", false),
    Question(
        "Gọi là nước sôi ở mức 100 độ C (212 độ F) dưới áp suất tiêu chuẩn.",
        true),
    Question(" Cá heo là một loài cá.", false),
    Question("Sói là một loài động vật ăn cỏ.", false),
    Question("Nước là một loại hóa chất độc hại. ", false),
    Question("Con người chỉ sử dụng 10% bộ não của họ.", false),
    Question(
        "Chuột có một cuộc sống ngắn hơn khi sống trong tự nhiên so với trong môi trường nhà cửa.",
        false),
    Question("Hoa hồng là loài hoa có màu trắng duy nhất.", false),
    Question("Rồng là một loài động vật có thực. ", false),
    Question("Cá voi là loài động vật biển lớn nhất. ", true),
    Question(" Bắc cực là nơi lạnh nhất trên trái đất.", false),
  ];
  void nextQuestion() {
    if (_numberQuestion < _arrayListQuestion.length - 1) {
      _numberQuestion++;
    }
  }

  bool isFinished() {
    return _numberQuestion >= _arrayListQuestion.length - 1;
  }

  void reset() {
    _numberQuestion = 0;
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
