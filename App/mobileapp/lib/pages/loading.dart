import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {

    Response response = await get('https://jsonplaceholder.typicode.com/todos/1');

    Response randomQuestion = await get('https://opentdb.com/api.php?amount=1');

    Map data = (jsonDecode(randomQuestion.body));
    // print(data);
    List results = (data['results']);
    print(results.asMap()[0]['correct_answer']);
    print(results.asMap()[0]['incorrect_answers']);
    // print(results['correct_answer']);


}

@override
  void initState() {
    super.initState();
    getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading'),
    );
  }
}
