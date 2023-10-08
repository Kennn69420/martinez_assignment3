import 'package:flutter/material.dart';
import 'package:mad_quiz_3d/data/question_list.dart';
import 'package:mad_quiz_3d/screen/home.dart';

class Question extends StatefulWidget {
  Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  final question_list = QUESTION_LIST;
  final answer_lista = ANSWER_A;
  final answer_listb = ANSWER_B;
  final answer_listc = ANSWER_C;
  final answer_listd = ANSWER_D;
  final answer_list = ANSWER_LIST;

  int score = 0;
  int questionIndex = 0;
  bool isFinished = false;
  bool showScore = false;
  int userScore = 0;

  void checkAnswer(String answer) {
    print(answer);
    if (answer == ANSWER_LIST[currentIndex]) {
      score++;
    }
    setState(() {
      if (currentIndex < QUESTION_LIST.length - 1) {
        currentIndex++;
        currentIndexA++;
        currentIndexB++;
        currentIndexC++;
        currentIndexD++;
      } else {
        isFinished = true;
      }
    });
  }

  showQuestion() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          question_list[currentIndex],
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w300,
          ),
        ),
        Spacer(),
        const SizedBox(
          height: 16,
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              checkAnswer('A');
            },
            child: Text(answer_lista[currentIndexA]),
          ),
        ),
        Spacer(),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              checkAnswer('B');
            },
            child: Text(answer_listb[currentIndexB]),
          ),
        ),
        Spacer(),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              checkAnswer('C');
            },
            child: Text(answer_listc[currentIndexC]),
          ),
        ),
        Spacer(),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              checkAnswer('D');
            },
            child: Text(answer_listd[currentIndexD]),
          ),
        ),
      ],
    );
  }

Widget ShowScore(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if(isFinished)
          Container(
            child: Center(
              child: Text(
                score > 7 ? 'Congratulations\n $score/ ${QUESTION_LIST.length}' 
                          : 'Thats Good\n $score/${QUESTION_LIST.length}',
              ),
            ),
          ),
        IconButton(
          icon: const Icon(Icons.repeat),
          onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),
          ),
        );
        },),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: isFinished ? ShowScore() : showQuestion(),
      ),
    );
  }
}