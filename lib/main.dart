import 'package:flutter/material.dart';
import 'package:hw3/start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String enteredText = ' ';
  MyApp({super.key});
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/ic_bg.png',),
              fit: BoxFit.cover,
            )
          ),
          child:  Builder(
            builder: (BuildContext context) {
              return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'SMT App!',
                        style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(20),
                        height: 250,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          children: <Widget>[
                            const Text(
                              "Welcome",
                              style: TextStyle(fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            const Spacer(flex: 2,),
                            const Text(
                              'Please Enter your Name',
                              style: TextStyle(fontSize: 16, color: Colors.black38, ),
                            ),
                            const Spacer(flex: 10),
                            TextField(
                              controller: _textController,
                              decoration: const InputDecoration(
                                labelText: 'Name',
                              ),
                            ),

                            const Spacer(flex: 10,),
                            ElevatedButton(
                              onPressed: () {
                                enteredText = _textController.text;

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Start(userName: enteredText),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurpleAccent,
                                fixedSize: const Size(double.maxFinite,0),
                              ),
                              child: const Text('Go to Second Screen'),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
              );
            },
          ),
        )
      ),
    );
  }
}
