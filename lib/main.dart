import 'package:flutter/material.dart';
import 'package:urweight/homeScreen.dart';
import 'package:urweight/howToplay.dart';
import 'package:urweight/start.dart';
import 'package:urweight/preStartGame.dart';
void main() => runApp(
    MaterialApp(
        initialRoute: '/home',
        routes : {
          '/home' : (context) => Home(),
          '/howtoplay' : (context) => HowToPlay(),
          '/start' : (context) => StartGame(),
          '/prestart' :(context) => PreStart()

        }
    )
);




