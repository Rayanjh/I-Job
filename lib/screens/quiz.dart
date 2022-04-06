import 'package:flutter/material.dart';

import '../material/colors.dart';
import '../widget/backgroundwidget.dart';

class quiz extends StatelessWidget {
  const quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int State = 0;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        // change the Height and width to mediaQuery
        // change the Height and width to mediaQuery
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
                      'Quiz',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Column(
                    children: [
                      Container(
                        height: size.height*0.4,
                        child: Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Center(
                            child: Text(
                              'We will ask you few qusetions If you ready press Start',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: FlatButton(
                          height: size.height*0.06,
                          minWidth: size.width*0.35,
                          color: kbutton,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Start',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {

                          },
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
