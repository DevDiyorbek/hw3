import 'package:flutter/material.dart';
import 'package:hw3/second_screen.dart';

class Start extends StatelessWidget {
  final String userName;

  const Start({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Greeting Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/welcome.png',
              height: 250,
              width: 300,
            ),
            const SizedBox(height: 20),
            Text(
              'Hello, $userName!',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            const Text(
                "Are you ready to take some quiz?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500,),
              ),
            ElevatedButton(onPressed: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  ),
                );
              },
              child: const Text("START"),
              ),
            ],
        ),
      ),
    );
  }
}
