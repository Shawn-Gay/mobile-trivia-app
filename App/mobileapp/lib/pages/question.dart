import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mobileapp/main.dart';


class Question extends StatefulWidget {
  @override
  QuestionState createState() => QuestionState();
}

class QuestionState extends State<Question> {

  Map questionData = {};
  Color mainColor = Colors.indigo[300];


  @override
  Widget build(BuildContext context) {


    questionData = questionData.isNotEmpty ? questionData : ModalRoute.of(context).settings.arguments;



    // When questionData is received and changed to a Map
    if (questionData != null){
    String quickDif = questionData['difficulty'];
    Color difficultyColor =
    quickDif == 'easy' ? Colors.greenAccent[400] :
    quickDif == 'medium' ? Colors.yellow[600]: Colors.red[600];
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,140,0,0),
          child: Center(
                      child: Column(
              children: <Widget>[
                Text(
                  '${questionData['category']}',
                  style: TextStyle(
                    fontSize: 20,
                  )
                  ),
                Text(
                  '${questionData['difficulty']}',
                  style: TextStyle(
                    color: difficultyColor,
                    fontSize: 22,
                    )
                  ),
                  Divider(
                    height: 40,
                    thickness: 1,
                    color: Colors.grey[400],
                    indent: 60,
                    endIndent: 60,
                  ),
                Container(
                  constraints: BoxConstraints(
                       maxWidth: 275.0,
                    ),
                  child: Text(
                    '${questionData['question']}',
                      textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18
                    ),
                    ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(

                      onPressed: () {
                        if(questionData['correctAnswer'] == true){
                          setState((){
                            mainColor = Colors.green[800];
                          });
                        } else {
                          setState((){
                            mainColor = Colors.red[800];
                          });
                        }
                      },
                      color: Colors.indigo[200],
                      child: Text('True'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(

                      onPressed: () {
                        if(questionData['correctAnswer'] == false){
                          setState((){
                            mainColor = Colors.green[800];
                          });
                        } else {
                          setState((){
                            mainColor = Colors.red[800];
                          });
                        }
                      },
                      color: Colors.indigo[200],
                      child: Text('False'),
                    ),
                  )
                ],),
                SizedBox(height: 60),
                Container(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                    color: Colors.indigo[200],
                    child: Text('New Question!')
                  )
                ),
              ]
            ),
          ),
        )
        ),
    );
    }
    // When questionData hasn't been recived
    else if (questionData == null){
       return LoadQuestion();
    }
  }
}

class LoadQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: Colors.indigo[300],
        body: Center(
          child: SpinKitRing(
            color: Colors.black,
            size: 50,
          )
        ),
    );
  }
}
