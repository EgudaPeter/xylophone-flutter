import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

final player = AudioCache();

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = double.infinity;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
              "Welcome to Xylophone",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    color: Colors.red,
                    width: width,
                  ), onPressed: () {RedButtonClicked();},
                ),
              ),
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    color: Colors.orange,
                    width: width,
                  ), onPressed: () {OrangeButtonClicked();},
                ),
              ),
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    color: Colors.yellow,
                    width: width,
                  ), onPressed: () {YellowButtonClicked();},
                ),
              ),
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    color: Colors.lightGreen,
                    width: width,
                  ), onPressed: () {LightGreenButtonClicked();},
                ),
              ),
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    color: Colors.green,
                    width: width,
                  ), onPressed: () {GreenButtonClicked();},
                ),
              ),
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    color: Colors.blue,
                    width: width,
                  ), onPressed: () {BlueButtonClicked();},
                ),
              ),
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    color: Colors.purple,
                    width: width,
                  ), onPressed: () {PurpleButtonClicked();},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
void RedButtonClicked(){
  player.play('note1.wav');
}
// ignore: non_constant_identifier_names
void OrangeButtonClicked(){
  player.play('note2.wav');
}
// ignore: non_constant_identifier_names
void YellowButtonClicked(){
  player.play('note3.wav');
}
// ignore: non_constant_identifier_names
void LightGreenButtonClicked(){
  player.play('note4.wav');
}
// ignore: non_constant_identifier_names
void GreenButtonClicked(){
  player.play('note5.wav');
}
// ignore: non_constant_identifier_names
void BlueButtonClicked(){
  player.play('note6.wav');
}
// ignore: non_constant_identifier_names
void PurpleButtonClicked(){
  player.play('note7.wav');
}

