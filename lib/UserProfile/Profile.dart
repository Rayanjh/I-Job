import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/backgroundwidget.dart';
import 'ProfileWidget.dart';
import 'appbar.dart';
import 'userSetup.dart';
import 'package:i_job/material/colors.dart';

class profile extends StatefulWidget {
  static const String id = 'profile_screen';

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override

  Widget build(BuildContext context) {
    const img = 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__480.png';
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(context),
      body: Column(
        children: [
          Stack(
            children: [
              backgroundwidget(),
              Column(
                children: [
                  Container(
                    height: size.height*0.85,
                    width: double.infinity,
                    child: Column(
                      children: [
                        ProfileWidget(
                          imagePath : img,
                          onClicked: () async{},
                        ),
                        SizedBox(height: 24,),
                        buildName(),
                        SizedBox(height: 24,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: Container(
                                child: Text(
                                  'FullName',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width*0.75,
                              height: 30,
                              child: TextField(

                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 40, 0),
                              child: Container(
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width*0.75,
                              height: 30,
                              child: TextField(

                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 14, 0),
                              child: Container(
                                child: Text(
                                  'Birth date',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width*0.75,
                              height: 30,
                              child: TextField(

                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 19, 0),
                              child: Container(
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width*0.75,
                              height: 30,
                              child: TextField(

                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
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

  Widget buildName() => Column(
    children: [
        userSetup().getUserName(),
    ],
  );

}




