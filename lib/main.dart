import 'dart:ffi';
import 'package:flutter/material.dart';
import 'questions.dart';
import 'questionBrain.dart';

 QuestionBrain questionBrain = QuestionBrain();

void main() {
  runApp(Quiz());
}

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizView(),
          ),
        ),
      ),
    );
  }
}

class QuizView extends StatefulWidget {
  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  List<Icon> scoreKeeper = [];

  void checkAnswer (bool userPickedAnswer){

    bool correctAnswer = questionBrain.getCorrectAnswer();

    setState(() {
    if (correctAnswer == false){
      scoreKeeper.add(Icon(Icons.check,color:Colors.lightGreen[600],));
    }else{
      scoreKeeper.add(Icon(Icons.close,color:Colors.redAccent,));
    }


      questionBrain.nextQuestion();
    });

  }


  // List<String> questions = [
  //   'Қазақ хандығы 1465-1466 жылы құрылған.',
  //   'Абылай ханға "Сабалақ" деген атты Төлеби берген.',
  //   'Казах хандығын Қасым сұлтан құрған',
  // ];
  // List<bool> answers = [
  //   true,
  //   true,
  //   false,
  // ];



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              //questions[questionsNumber],
              questionBrain.getQuestionText(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.yellow[600],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.9),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightGreen[600],
              ),
              onPressed: () {
                checkAnswer(true);

              },
              child: Text(
                'Шын',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),

        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.9),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.redAccent,
              ),
              onPressed: () {
                checkAnswer(false);

              },
              child: Text(
                'Жалған',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        //TODO: Row Widget осы жерде құрасыз.
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
