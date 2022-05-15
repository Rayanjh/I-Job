import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ProfileWidget.dart';
import 'appbar.dart';
import 'userSetup.dart';

class profile extends StatefulWidget {
  static const String id = 'profile_screen';

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    const img = 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__480.png';
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: buildAppBar(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [

          ProfileWidget(
            imagePath : img,
            onClicked: () async{},
          ),
          const SizedBox(height: 24,),
          buildName(),

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




