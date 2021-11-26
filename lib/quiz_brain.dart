import 'question.dart';

class QuizBrain {
  //Khai bao int questionNumber = 0; o quiz_brain de chi file nay co the dieu khien. va ta k bi qua range khi an qua cau hoi thu 13.
  //vi list cau hoi chi co 13 cau. neu ta khai bao int questionNumber = 0 o file main.dart thi app bao loi over range khi ta
  //an qua cau hoi 13.
  int _questionNumber = 0; //co 13 cau hoi nen bien _questionNumber tu 0-12
  final List<Question> _questionBank = [
    //Phai co final de ch trinh k bao loi. do sd old version.
    //Organize the questions & answers together into an object.
    //We create the objects by creating a class.
    Question(
        questionText: 'Some cats are actually allergic to humans',
        questionAnswer: true),
    Question(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        questionAnswer: false),
    Question(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        questionAnswer: true),
    Question(questionText: 'A slug\'s blood is green.', questionAnswer: true),
    Question(
        questionText: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        questionAnswer: true),
    Question(
        questionText: 'It is illegal to pee in the Ocean in Portugal.',
        questionAnswer: true),
    Question(
        questionText:
            'No piece of square dry paper can be folded in half more than 7 times.',
        questionAnswer: false),
    Question(
        questionText:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        questionAnswer: true),
    Question(
        questionText:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        questionAnswer: false),
    Question(
        questionText:
            'The total surface area of two human lungs is approximately 70 square metres.',
        questionAnswer: true),
    Question(
        questionText: 'Google was originally called \"Backrub\".',
        questionAnswer: true),
    Question(
        questionText:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        questionAnswer: true),
    Question(
        questionText:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        questionAnswer: true),
  ];
  //Tao function de cau hoi go to the next question.
  void nextQuestion() {
    //tao ham chuyen sang cau hoi tiep theo neu cau hoi nam trong pham vi tu 0-12
    if (_questionNumber < _questionBank.length) {
      _questionNumber++; //chuyen sang next question
    }
    print('$_questionNumber/${_questionBank.length}');
  }

  //tao ham de khi ng dung chon dap an xong thi se chuyen sang cau hoi tiep theo.
  //Create a method called   String getQuestionText() that returns the text of the question for the first question from _questionBank.
  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  //TAO ham khi ng dung chon dap an dung cho tung cau hoi thi ...
  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  /*TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question.
  It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.
  */
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //sd dau >= de khi chon den cau hoi thu 13 thi app se in ra Alert voi ket qua dat dc.
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.
      print('${_questionNumber + 1}/${_questionBank.length}');

      return true;
    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
