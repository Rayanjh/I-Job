import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context){
  const moon = CupertinoIcons.moon_stars;
  return AppBar(

    leading: BackButton(color: Colors.white,),
    backgroundColor: Colors.transparent,
    elevation: 0,
   /* actions: [
      IconButton(
        color: Colors.white,
        onPressed: () {
        },
          icon: Icon(moon),
      ),
    ],
    */
  );
}