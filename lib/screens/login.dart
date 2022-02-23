import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:i_job/animation/Fade.dart';
import 'package:i_job/material/colors.dart';
import 'package:i_job/screens/homepage.dart';
import 'package:i_job/screens/register.dart';
import 'package:i_job/widget/backgroundwidget.dart';
import 'package:i_job/widget/button.dart';
import 'package:i_job/widget/textField.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Please,Log in.',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GlassContainer(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        textField(
                          border: 40,
                          padding: 25,
                          icon: Icons.mail,
                          color: Colors.white,
                          hintText: 'example@example.com',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        textField(
                          border: 40,
                          padding: 25,
                          icon: Icons.vpn_key_rounded,
                          color: Colors.white,
                          hintText: '**************',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    height: 200,
                    width: size.width,
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
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.07),
                    padding: EdgeInsets.all(8.0),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: size.width * 0.7,
                    height: size.height * 0.08,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      color: kbutton,
                      onPressed: () {
                        Navigator.push(context, Fade(widget: homepage()));
                      },
                      child: Text(
                        'Continue >',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'ــــــــــــــــــــــــــــــــــ  Or  ــــــــــــــــــــــــــــــــــ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: size.width * 0.7,
                    height: size.height * 0.08,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      color: kbutton,
                      onPressed: () {
                        Navigator.push(context, Fade(widget: register()));
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
