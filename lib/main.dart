import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patten_ui/screen/view/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => homescreen(),
      },
    ),
  );
}
