import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  'Welcome to TODOs app!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.all(20),
              ),
              Container(
                child: Text(
                  'Keep track of your daily activities easily by using your smart phone.',
                ),
                padding: EdgeInsets.all(10),
              ),
              FlatButton(
                child: Text(
                  'Please, continue.',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => Navigator.pushNamed(context, '/todos'),
                color: Colors.green,
              )
            ]),
      ),
    );
  }
}
