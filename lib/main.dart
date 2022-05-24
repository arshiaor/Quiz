import 'package:flutter/material.dart';
import 'question.dart';


void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List <Icon> scoreKeeper=[];
  
  List <Question> questions =[
    Question(que: 'If you travel faster than the speed of light, you’ll age less', ans: true),
    Question(que: 'Pi is an irrational number', ans: false),
    Question(que: 'Time goes slower at the top of the building than at the bottom', ans: false),
    Question(que: 'The gyroscopic effect keeps a bike balanced', ans: true),
  ];


  int questionNumber = 0;

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
            child: Center(
              child: Text(
                questions[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {

                bool correctAnswer = questions[questionNumber].questionAnswer;
                if(correctAnswer == true){
                    print('user got it right');
                }else{
                  print('user got it wrong');
                }

                setState(() {
                  scoreKeeper.add(Icon(Icons.check,color: Colors.green,));
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {

                bool correctAnswer = questions[questionNumber].questionAnswer;
                if(correctAnswer == false){
                  print('user got it right');
                }else{
                  print('user got it wrong');
                }

                setState(() {
                  questionNumber++;
                });
                },
            ),
          ),
        ),

        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

/*
'If you travel faster than the speed of light, you’ll age less' true
'Pi is an irrational number' false
'Time goes slower at the top of the building than at the bottom' false
'The gyroscopic effect keeps a bike balanced' true
*/
