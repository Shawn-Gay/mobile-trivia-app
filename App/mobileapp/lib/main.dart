import 'package:flutter/material.dart';
import 'package:mobileapp/pages/loading.dart';
import 'package:mobileapp/pages/question.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => Loading(),
      '/question' : (context) => Question(),
    }
  ));
}

