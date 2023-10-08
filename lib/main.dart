import 'package:flutter/material.dart';
import 'package:mad_quiz_3d/screen/home.dart';

void main(){
  runApp(const QuizzApp());
}

class QuizzApp extends StatelessWidget {
  const QuizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}