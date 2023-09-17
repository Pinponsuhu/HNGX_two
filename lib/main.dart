import 'package:cv/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: HomeScreen.id,
    routes: {
      HomeScreen.id: (context) => HomeScreen(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

