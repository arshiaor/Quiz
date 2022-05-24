import 'question.dart';
class Quiz{
  int _questionNumber = 0;

  List <Question> _questions =[
    Question('If you travel faster than the speed of light, you’ll age less',true),
    Question('Pi is an irrational number',false),
    Question('Time goes slower at the top of the building than at the bottom',false),
    Question('The gyroscopic effect keeps a bike balanced',true),
  ];

  void nextQuestion(){
    int ps=_questions.length;
    if(_questionNumber <_questions.length-1){
      _questionNumber++;
    }
    print("Number: $_questionNumber");

    print("all : $ps");
  }


  String getQuestionText(){
    return _questions[_questionNumber].questionText;
  }

  bool getQuestionAnswer(){
    return _questions[_questionNumber].questionAnswer;
  }
}