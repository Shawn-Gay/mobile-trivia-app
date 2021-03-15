// packages
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
//services
import 'package:mobileapp/services/questionRequest.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getQuestion() async {
    QuestionRequest instance = QuestionRequest();
    await instance.getQuestion();
    Navigator.pushReplacementNamed(context, '/question', arguments: {
       'category' : instance.category,
       'difficulty' : instance.difficulty,
       'question' : instance.question,
       'correctAnswer' : instance.correctAnswer,
    });
  }

    @override
  void initState() {
    super.initState();
    getQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 50.0,
        )
      )
    );
  }
}
