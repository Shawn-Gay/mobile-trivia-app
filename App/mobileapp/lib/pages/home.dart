import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    if(data != null){
    print(data);
    return Scaffold(
    backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,140,0,0),
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                onPressed: () async {
                dynamic result = await Navigator.pushNamed(context, '/location');

                setState((){
                  data = {
                    'time': result['time'],
                    'location': result['location'],
                    'flag': result['flag'],
                    'isDaytime': result['isDaytime'],
                  };
                });

                },
                icon: Icon(Icons.edit_location),
                label: Text('Location'),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text(
                  data['location'],
                  style: TextStyle(
                    fontSize: 28,
                    letterSpacing: 2,
                  )
                )
              ]),
              SizedBox(height: 20),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 66,
                )
              )
            ],
          ),
        )
      ),
    );
    } else if (data == null) {
    return Scaffold(
      backgroundColor: Colors.indigo,
        body: Center(
          child: SpinKitRing(
            color: Colors.black,
            size: 50,
          )
        ),
    );
    }


  }
}
