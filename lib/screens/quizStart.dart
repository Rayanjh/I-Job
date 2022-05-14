import 'package:flutter/material.dart';
import 'package:i_job/screens/result.dart';

import '../animation/Fade.dart';
import '../material/colors.dart';
import '../widget/backgroundwidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:i_job/UserProfile/userSetup.dart';
class quizStart extends StatefulWidget {
  const quizStart({Key? key}) : super(key: key);

  @override
  State<quizStart> createState() => _quizStartState();
}

class _quizStartState extends State<quizStart> {
  int _qusetionIndex = 0;
  int _totalScore = 0;
  List<int> intArr = [0,0,0,0,0,0,0,0,0,0];
  double finishBar = 0.1;

  // 0 == null

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,

      body: Column(
        // change the Height and width to mediaQuery
        // change the Height and width to mediaQuery

        children: [
          Stack(
            children: [
              backgroundwidget(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 50, 0, 15),
                    child: Text(
                      'QuizStart',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 15,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 15,
                              width: size.width*finishBar,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Text(
                          "$_qusetionIndex/9",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        height: size.height*0.25,
                        child: Center(
                          child: Text(
                            _questions[_qusetionIndex],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                            ),
                          ),
                        ),
                      ),
                      // Inkwell make anything tappable,  example Container
                      InkWell(
                        onTap: () {
                          setState(() {
                            //intArr.insert(_qusetionIndex,1);
                            print(_qusetionIndex);
                            intArr[_qusetionIndex] = 1;
                            print(intArr);
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Answer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            intArr[_qusetionIndex] = 2;
                            print(_qusetionIndex);
                            print(intArr);
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Answer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            intArr[_qusetionIndex] = 3;
                            print(_qusetionIndex);
                            print(intArr);
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Answer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            intArr[_qusetionIndex] = 4;
                            print(_qusetionIndex);
                            print(intArr);
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Answer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (_qusetionIndex > 0) {
                                    _qusetionIndex--;
                                    finishBar -= 0.1;
                                  }
                                });
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 16,
                              ),
                            ),
                            ElevatedButton(

                              onPressed: () async {
                                if (_qusetionIndex == 9){
                                  userSetup().userTestResult('it');
                                  final url = 'http://10.0.2.2:5000/answers';
                                  final response = await http.post(Uri.parse(url),body: json.encode({'answers' : intArr}));

                                  Navigator.push(context,Fade(widget: result()));

                                }else{
                                  print('answer the questions');

                                }

                              },
                              child: Text(
                                'Finish',
                              ),
                            ),
                            ElevatedButton(
                                onPressed: ()  {
                                  setState(() {
                                    if (_qusetionIndex < 9 && intArr[_qusetionIndex] != 0) {
                                      _qusetionIndex++;
                                      finishBar+=0.1;
                                      print(_qusetionIndex);
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final _questions = const [
  'Sample Question 0',
  'Sample Question 1',
  'Sample Question 2',
  'Sample Question 3',
  'Sample Question 4',
  'Sample Question 5',
  'Sample Question 6',
  'Sample Question 7',
  'Sample Question 8',
  'Sample Question 9',
];