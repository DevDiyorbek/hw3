import 'package:flutter/material.dart';

class ResultActivity extends StatelessWidget {
  final String variableValue;

  // Constructor to receive the variable value
  const ResultActivity(this.variableValue, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 1,),
            const Text('Result'),
            const Spacer(flex: 1,),
            Image.asset('images/ic_trophy.png'),
            const Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}
