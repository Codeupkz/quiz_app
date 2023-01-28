import 'package:flutter/material.dart';

void main() {
  runApp(Quiz());

}

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow[600],
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
  const QuizView({Key? key}) : super(key: key);

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
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
              'Сұрақтар осы жерде орналасады',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.indigo[900],
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
              onPressed: () {},
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
              onPressed: () {},
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
        //TODO: Row Widget осы дерде құрасыз.
 
      ],
    );
  }
}
