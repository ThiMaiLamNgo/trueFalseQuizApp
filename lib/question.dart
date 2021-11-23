class Question {
  late String questionText;
  late bool questionAnswer;
  Question({required this.questionText, required this.questionAnswer});
  /*1 dong nay Question({required this.questionText, required this.questionAnswer});
// ttu nhu 3 dong sau:
  Question({required String q, required bool a}) {
    questionText = q;
    questionAnswer = a;
  }
  */
}

//Question newQuestion = Question('text', true);
