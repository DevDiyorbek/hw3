import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  String enteredText = " ";
  SecondScreen(this.enteredText, {super.key});

  @override
  Widget build(BuildContext context) {


    // int correctAnswers = 0;

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Second Screen'),
          ),
          body: Builder(
            builder: (BuildContext context) {
              return Center(

                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Name of a user: enteredText",
                        style: TextStyle(fontSize: 30),
                      ),
                      const SizedBox(height: 30,),

                      Image.asset('images/ic_flag_of_argentina.png'),
                      const SizedBox(height: 30,),

                      Container(
                        margin: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // correctAnswers++;
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                fixedSize: const Size(double.maxFinite,0),
                              ),
                              child: const Text('Argentina', style: TextStyle(color: Colors.black),),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // TODO
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                fixedSize: const Size(double.maxFinite,0),
                              ),
                              child: const Text('Australia', style: TextStyle(color: Colors.black),),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // TODO
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(double.maxFinite,0),
                                  backgroundColor: Colors.white
                              ),
                              child: const Text('India', style: TextStyle(color: Colors.black),),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // TODO
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(double.maxFinite,0),
                                backgroundColor: Colors.white
                              ),
                              child: const Text('Brazil', style: TextStyle(color: Colors.black),),
                            ),
                            const SizedBox(height: 30,),
                            ElevatedButton(
                              onPressed: () {
                                // Navigate to the second screen and pass the variable
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => SecondScreen(),
                                //   ),
                                // );
                              },
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(double.maxFinite,0),
                              ),
                              child: const Text('SUBMIT', style: TextStyle(color: Colors.black),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
              );
            }
          )
      ),
    );
  }
}

