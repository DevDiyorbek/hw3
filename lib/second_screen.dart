import 'package:flutter/material.dart';
import 'package:hw3/third_screen.dart';

class SecondScreen extends StatelessWidget {

  const SecondScreen({super.key,});

  @override
  Widget build(BuildContext context) {
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
                        "What Country does this flag belong to",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 26),
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ThirdScreen(),
                                  ),
                                );
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

