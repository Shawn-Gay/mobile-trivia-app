import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trivia'),
        centerTitle: true,
        backgroundColor: Colors.red[500],
      ),
      body: Center(
        child: Text(
          'Centered Body Text',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.grey[800],
            fontFamily: 'Akaya',
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Press!'),
        backgroundColor: Colors.red[500],
      ),
    );
  }
}
