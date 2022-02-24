import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:i_job/material/colors.dart';
import 'package:i_job/widget/backgroundwidget.dart';
import 'package:i_job/widget/glassList.dart';

class listedjob extends StatefulWidget {
  const listedjob({Key? key}) : super(key: key);

  @override
  State<listedjob> createState() => _listedjobState();
}

class _listedjobState extends State<listedjob> {
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
                      'Listed Job',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height*0.8,
                    child: ListView(
                      children: [
                        glassList(title: 'Job Title', description: 'Job description Job description'),
                        glassList(title: 'Job Title', description: 'Job description Job description'),
                        glassList(title: 'Job Title', description: 'Job description Job description'),
                        glassList(title: 'Job Title', description: 'Job description Job description'),
                        glassList(title: 'Job Title', description: 'Job description Job description'),
                      ],
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
