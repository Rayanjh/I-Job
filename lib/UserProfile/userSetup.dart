import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';



  final _auth = FirebaseAuth.instance;

  Future<void> userSetup(String displayName)async{

    CollectionReference users = FirebaseFirestore.instance.collection('users');

    String uid = _auth.currentUser!.uid.toString();
    users.doc(uid).set({
      'UserName': displayName,
    });
    return;
  }




  Future <String> getCurrentUID() async{
    String uid = await _auth.currentUser!.uid.toString();
    return uid;
  }


  FutureBuilder<DocumentSnapshot<Object?>> getUserName(){
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    String uid = _auth.currentUser!.uid.toString();

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(uid).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

        if (snapshot.hasError) {
          return const Text("Something went wrong",
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return const Text("Document does not exist",
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
          return Text("${data['UserName']} ",
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),);
        }

        return const Text("");
      },
    );


  }





