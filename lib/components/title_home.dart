import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TitleHome extends StatelessWidget {
  TitleHome(
    this.startPLay_call,{
    super.key,
  });

  VoidCallback startPLay_call;

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Image.asset('assets/images/quiz.jpg'),
        const SizedBox(
          height: 22,
        ),
        const Text('Play an exciting Trivia game',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w400,
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 22,),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 12),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.amber.shade300,
              elevation: 5,
            ),
            onPressed: startPLay_call, 
            child: const Text('Play',
              style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}