import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:i_job/animation/Fade.dart';
import 'package:i_job/material/colors.dart';
import 'package:i_job/screens/login.dart';
import 'package:i_job/widget/backgroundwidget.dart';
import 'package:i_job/widget/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:i_job/UserProfile/userSetup.dart';

class register extends StatelessWidget {
  //const register({Key? key}) : super(key: key);
  final _auth = FirebaseAuth.instance;
  String email = '';
  String password = '';
  String uName = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Stack(
            children: [
              backgroundwidget(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Text(
                    'Hi there!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    'Let\'s Get Started.',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  GlassContainer(
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.015,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.white,
                          ),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              uName = value;
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 25, horizontal: 25),
                              hintText: 'Full name',
                              prefixIcon: Icon(
                                Icons.account_box,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0,
                                  color: Color(0xFFFFFFF),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0,
                                  color: Color(0xFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.white,
                          ),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              email = value;
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 25, horizontal: 25),
                              hintText: 'example@example.com',
                              prefixIcon: Icon(
                                Icons.mail,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0,
                                  color: Color(0xFFFFFFF),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0,
                                  color: Color(0xFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.white,
                          ),
                          child: TextField(
                            obscureText: true,
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              password = value;
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 25, horizontal: 25),
                              hintText: '**************',
                              prefixIcon: Icon(
                                Icons.vpn_key_rounded,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0,
                                  color: Color(0xFFFFFFF),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0,
                                  color: Color(0xFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    height: size.height * 0.4,
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
                    height: size.height * 0.03,
                  ),
                  button(
                    inputText: 'Continue >',
                    borderRadius: 25,
                    h: size.height * 0.08,
                    w: size.width * 0.7,
                    TextColor: Colors.white,
                    buttonCcolor: kbutton,
                    fontsize: 16,
                    weight: FontWeight.bold,
                    onPressed: () async {
                      try {
                        final newUser =
                            await _auth.createUserWithEmailAndPassword(
                          email: email,
                          password: password,
                        );
                        userSetup(uName);

                        if (newUser != null) {
                          Navigator.push(context, Fade(widget: login()));
                        }
                      } catch (ERROR_EMAIL_ALREADY_IN_USE) {
                        //print(e);
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Unable to register'),
                                content: Text('email already in use, Try useing another email'),
                                actions: [
                                  button(
                                    borderRadius: 25,
                                    h: size.height * 0.08,
                                    w: size.width * 0.7,
                                    TextColor: Colors.white,
                                    buttonCcolor: kbutton,
                                    fontsize: 16,
                                    weight: FontWeight.bold,
                                    inputText: 'ok',
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                      }
                    },
                  ),
                  SizedBox(
                    height: size.height * 0.03,
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
                    height: size.height * 0.03,
                  ),
                  button(
                    inputText: 'Log In',
                    borderRadius: 25,
                    h: size.height * 0.08,
                    w: size.width * 0.7,
                    TextColor: Colors.white,
                    buttonCcolor: kbutton,
                    fontsize: 16,
                    weight: FontWeight.bold,
                    onPressed: () {
                      Navigator.push(context, Fade(widget: login()));
                      print('test');
                    },
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
