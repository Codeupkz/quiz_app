import 'questions.dart';

class QuestionBrain {

  int questionsNumber = 0;

  List<Question>questionList = [
    Question('Қазақ хандығы 1465-1466 жылы құрылған.', true),
    Question('Абылай ханға "Сабалақ" деген атты Төлеби берген.', true),
    Question('Казах хандығын Қасым сұлтан құрған', false)
  ];

  void nextQuestion (){
    if (questionsNumber < questionList.length-1){
      questionsNumber = questionsNumber +1;
    }

  }

  String getQuestionText (){
    return questionList[questionsNumber].questionText;
  }
  bool getCorrectAnswer (){
    return questionList[questionsNumber].questionAnswer;
  }

}