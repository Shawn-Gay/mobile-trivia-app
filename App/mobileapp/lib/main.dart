import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mobileapp/pages/home.dart';
import 'package:mobileapp/pages/loading.dart';
import 'package:mobileapp/pages/choose_location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/' : (context) => Loading(),
    '/home' : (context) => Home(),
    '/location' : (context) => ChooseLocation(),
  },
));
