import 'package:http/http.dart';
import 'dart:convert';
import 'package:html_character_entities/html_character_entities.dart';

class QuestionRequest {

  Map data;
  String category;
  String difficulty;
  String question;
  bool correctAnswer;

  Future<void> getQuestion() async{
    try{
      // API request
      Response reponse = await get('https://opentdb.com/api.php?amount=1&type=boolean');
      Map responseBody = jsonDecode(reponse.body);
      Map questionInfo = responseBody['results'].asMap()[0];


      // Question declarations
      category = questionInfo['category'];
      difficulty = questionInfo['difficulty'];
      question = HtmlCharacterEntities.decode(questionInfo['question']);
      correctAnswer = questionInfo['correct_answer'] == 'True' ? true: false;

      data = questionInfo;

    } catch(err){
      print('Error: $err');
    }
  }
}
