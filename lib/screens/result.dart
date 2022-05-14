import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:i_job/animation/Fade.dart';
import 'package:i_job/material/colors.dart';
import 'package:i_job/screens/homepage.dart';
import 'package:i_job/screens/register.dart';
import 'package:i_job/widget/backgroundwidget.dart';
import 'package:i_job/widget/glassList.dart';
import 'package:http/http.dart' as http;
import '../widget/button.dart';
String job = "";

class result extends StatefulWidget {

  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  //const result({Key? key, required this.job}) : super(key: key);
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
                      'Result',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Center(
                    child: button(
                        inputText: 'Show result',
                        borderRadius: 25,
                        h: size.height * 0.08,
                        w: size.width * 0.7,
                        TextColor: Colors.white,
                        buttonCcolor: kbutton,
                        fontsize: 16,
                        weight: FontWeight.bold,
                        onPressed: () async {

                          final url = 'http://10.0.2.2:5000/answers';
                          final response = await http.get(Uri.parse(url));
                          final decoded = jsonDecode(response.body) as Map<String, dynamic>;
                          setState(() {
                            job = decoded['job'];
                          });

                          print(job);
                          
                          }
                        ),

                  ),
                  Padding(
                    
                    padding: const EdgeInsets.only(top: 60),
                    child: Center(
                      child: Text(
                      
                        job,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(

                    padding: const EdgeInsets.only(top: 60),
                    child: Center(
                      child: ElevatedButton(onPressed: () async{

                      Navigator.push(context,Fade(widget: homepage()));

                      }
                          ,
                          child: Text(
                            'Go back',
                          )),
                    ),
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