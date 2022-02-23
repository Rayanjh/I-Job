import 'package:flutter/material.dart';
import 'package:i_job/material/colors.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:i_job/widget/backgroundwidget.dart';
import 'package:i_job/widget/glassText.dart';
import 'package:i_job/widget/glassbutton.dart';


class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Stack(
            children: [
              backgroundwidget(),
              Padding(
                padding: EdgeInsets.fromLTRB(25, 50, 25, 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Welcome back Rayan.',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 10,),
                    Text(
                      'Some Text',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
                      child: Column(
                        children: [
                          glassText(
                              inputText: 'The I-Job Career Quiz is designed to give you an understanding of the areas of your career that will be most suitable for you.',
                              h: 230,
                              inputText2: 'it won\'t take much time'),
                          SizedBox(height: 10,),
                          glassbutton(),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
