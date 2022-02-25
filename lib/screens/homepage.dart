import 'package:flutter/material.dart';
import 'package:i_job/material/colors.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:i_job/widget/backgroundwidget.dart';
import 'package:i_job/widget/glassText.dart';
import 'package:i_job/widget/glassbutton.dart';
import 'package:i_job/UserProfile/userSetup.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                        'Welcome back.',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: size.height*0.01,),
                    Text(
                      '$userSetup',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: size.height*0.04,),
                    Column(
                      children: [
                        glassText(
                            inputText: 'The I-Job Career Quiz is designed to give you an understanding of the areas of your career that will be most suitable for you.',
                            h: size.height*0.34,
                            inputText2: 'it won\'t take much time'),
                        SizedBox(height: size.height*0.030,),
                        glassbutton(),

                      ],
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
