import 'Question.dart';

class QuestionBank {
  int _questionNumber = 0;

  List<Question> _questions = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questions[_questionNumber].questionText;
  }

  bool getQuestionAns() {
    return _questions[_questionNumber].questionAns;
  }

  bool isFinished() {
    return _questionNumber >= _questions.length - 1;
  }

  void reset() {
    _questionNumber = 0;
  }
}
