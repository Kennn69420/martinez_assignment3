import 'package:flutter/material.dart';
import 'package:mad_quiz_3d/components/question.dart';
import 'package:mad_quiz_3d/components/title_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool toPLay = false;

  void startPLay(){
    setState(() {
      toPLay = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade600,
      body: toPLay ? Question() : TitleHome(startPLay),
    );
  }
}
