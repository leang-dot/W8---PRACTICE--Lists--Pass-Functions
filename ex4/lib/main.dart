import 'package:ex4/ui/home_screen.dart';
import 'package:flutter/material.dart';

Color appColor = Colors.green[300] as Color;

void main() => runApp(
  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: appColor,
          title: const Text("Favorite Jokes"),
        ),
        body: HomePage(appColor: appColor),
      ),
    ));
