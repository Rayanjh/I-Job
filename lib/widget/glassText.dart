import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:i_job/animation/Fade.dart';
import 'package:i_job/material/colors.dart';
import 'package:i_job/screens/login.dart';

//glass Container with 2x InputText 1x button

class glassText extends StatelessWidget {
  final String inputText;
  final String inputText2;
  final double h;
  //if we use final we should make it const, if one of them without final delete const
  //if the varible not requier we should add the ? to the varible name and delete requier

  const glassText({required this.inputText, required this.h, required this.inputText2});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GlassContainer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Text(
              inputText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),
            ),
          ),
          SizedBox(
            height: size.height*0.03,
          ),
          Text(
            inputText2,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: size.height*0.01,),
          FlatButton(
            height: size.height*0.06,
            minWidth: size.width*0.35,
            color: kbutton,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
                'Start now',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
                Navigator.push(context,Fade(widget: login()));
            },
          ),
        ],
      ),
      height: h,
      width: double.infinity,
      gradient: LinearGradient(
        colors: [
          kmenuBackgroundColor.withOpacity(0.40),
          kmenuBackgroundColor.withOpacity(0.10),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderGradient: LinearGradient(
        colors: [
          kmenuBackgroundColor.withOpacity(0.60),
          kmenuBackgroundColor.withOpacity(0.10),
          kColor1.withOpacity(0.05),
          kColor1.withOpacity(0.30),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.0, 0.39, 0.40, 1.0],
      ),
      blur: 40,
      borderRadius: BorderRadius.circular(24.0),
      borderWidth: 1.0,
      elevation: 3.0,
      shadowColor: kmenuBackgroundColor.withOpacity(0.20),
      alignment: Alignment.center,
      frostedOpacity: 0.12,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
    );
  }
}
