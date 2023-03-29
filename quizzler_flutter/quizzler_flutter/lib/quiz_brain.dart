import 'package:quizzler_flutter/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
        'The Great Wall of China is the only man-made structure visible from space',
        false),
    Question('Mount Everest is the tallest mountain in the world.', true),
    Question('The capital of Australia is Sydney.', false),
    Question('The Mona Lisa is a sculpture.', false),
    Question('The largest ocean in the world is the Atlantic Ocean.', false),
    Question('The sun is a planet.', false),
    Question('Caffeine is a type of drug.', true),
    Question('The Earth is flat.', false),
    Question('Elephants are the largest land animals.', true),
    Question('Alaska is the largest state in the United States.', true),
    Question(
        'The Statue of Liberty was a gift from France to the United States.',
        true),
    Question('The shortest day of the year is the summer solstice.', false),
    Question('Julius Caesar was the first emperor of Rome.', false),
    Question('The Eiffel Tower is located in London.', false),
    Question('The moon orbits the Earth.', true),
    Question('DNA stands for Deoxyribonucleic acid.', true),
    Question('The Nile is the longest river in the world.', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber < _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
