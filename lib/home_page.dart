import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'lib/images/quiz-logo.png',
            width: 250,
            color: Color.fromARGB(255, 182, 148, 250),
          ),

          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'lib/images/quiz-logo.png',
          //     width: 250,
          //   ),
          // ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              color: Color.fromARGB(255, 201, 194, 194),
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(197, 255, 255, 255),
            ),
            //child cant be used instead we use label
            label: const Text(
              "Start Quiz",
              style: TextStyle(),
            ),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
