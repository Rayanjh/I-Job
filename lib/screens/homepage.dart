import 'package:flutter/material.dart';
import 'package:i_job/UserProfile/Profile.dart';
import 'package:i_job/animation/Fade.dart';
import 'package:i_job/material/colors.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:i_job/screens/recenttest.dart';
import 'package:i_job/widget/backgroundwidget.dart';
import 'package:i_job/widget/glassText.dart';
import 'package:i_job/widget/glassbutton.dart';
import 'package:i_job/UserProfile/userSetup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class homepage extends StatefulWidget {
  static const String id = 'chat_screen';
  @override
  State<StatefulWidget> createState() => _HomepageState();
}

class _HomepageState extends State<homepage> {
 // const homepage({Key? key}) : super(key: key);
  final _auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  late User loggedInUser;
  String UserName = '';



  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }
  void getCurrentUser() async {
    try{
      final user = await _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    }catch(e){
      print(e);
    }
  }

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
                padding: EdgeInsets.fromLTRB(25, 50, 25, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            'Welcome back',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Container(

                          decoration: BoxDecoration(
                              color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: IconButton(
                              onPressed: (){
                                Navigator.push(context,Fade(widget: profile()));
                              }, icon: Icon(Icons.person),
                            color: Colors.grey,

                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: size.height*0.01,),

                   userSetup().getUserName(),
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


