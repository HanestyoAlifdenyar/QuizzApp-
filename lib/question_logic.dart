import 'package:quiz_app_tugas_record/question.dart';

class QuestionLogic {
  int _questionNumber = 0;

  List<Question> _questionList = [
    Question('Memngambil sandal teman', false),
    Question('Makan dengan tangan kanan', true),
    Question('Makan dengan tangan kiri', false),
    Question('Minum dengan tangan kanan', true),
    Question('Minum dengan tangan kiri', false),
    Question('Cebok dengan tangan kiri', true),
    Question('Cebok dengan tangan kanan', false),
    Question('Membantu teman yang kesulitan', true),
    Question('Indonesia merdeka tahun 1945', true),
    Question('Hari nasional indonesia tanggal 17 agustus', true),
  ];

  String getQuestion() => _questionList[_questionNumber].question;

  int getQuestionNumberText() => _questionNumber + 1;

  int getTotalQuestionText() => _questionList.length;

  bool getCorrectAnswer() => _questionList[_questionNumber].answer;

  void nextQuestion() {
    if (_questionNumber < _questionList.length - 1) {
      _questionNumber++;
      print(_questionNumber);
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void resetQuestion() => _questionNumber = 0;
}
