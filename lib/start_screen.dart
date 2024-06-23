import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  
  
  const StartScreen(this.switchScreen ,{super.key});

  final void Function() switchScreen;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Image(
            image: AssetImage('assets/images/quiz-logo.png'),
            width: 300,
            color: Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Learn Flutter",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: switchScreen,
            label: const Text(
              "Start Quiz",
              style: TextStyle(color: Colors.white),
            ),
            icon: const Icon(Icons.arrow_right),
          )
        ],
      ),
    );
  }
}
