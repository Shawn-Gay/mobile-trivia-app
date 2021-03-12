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
        child: Image(
          image: NetworkImage('https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg')
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Press!'),
        backgroundColor: Colors.red[500],
      ),
    );
  }
}
