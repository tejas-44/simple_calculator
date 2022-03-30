import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:  Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  late int num1;
  late int num2;
  late int answer = 0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 90,horizontal: 30),
              child: Card(
                color: const Color(0xffc4c4c4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:  Padding(
                          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                          child: Text(answer.toString(),style: TextStyle(
                          ),
                          textAlign: TextAlign.start,),
                        ),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: 130,
                            child: TextField(
                              decoration: const InputDecoration(
                                hintText: "First Num",
                                hintStyle:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  num1 = int.parse(value);
                                });

                                print(num1);
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: 130,
                            child: TextField(
                              decoration: const InputDecoration(
                                hintText: "Second Num",
                                hintStyle:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  num2 = int.parse(value);
                                });
                                print(num2);
                              },
                            ),
                          ),
                        ),
                      ],
                    ), Padding(
                      padding: const EdgeInsets.only(top: 50,left: 90,right: 90,bottom: 50),
                      child: ElevatedButton(
                          onPressed: () {

                              setState(() {
                                answer = CalculateAnswer(num1,num2);
                              });
                          },
                          child: const Text("Submit")),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

int CalculateAnswer(int num1, int num2){
  int answer = num1 + num2;
  return answer;
}
