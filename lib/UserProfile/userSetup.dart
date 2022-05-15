import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class userSetup {

  final _auth = FirebaseAuth.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('User_Info');

  Future<void> userSetup1(String displayName) async {
    String uid = await _auth.currentUser!.uid.toString();
    users.doc(uid).set({
      'user_name': displayName,
      'first_name':'',
      'last_name':'',
      'email':'',
      'address':'',
      'DOB':'',
      'test_result': '',
    });
    return;
  }

  Future<void> userTestResult(String testResult) async {
    String uid = await _auth.currentUser!.uid.toString();
    users.doc(uid).update({
      'test_result': testResult,
    });
    return;
  }


  Future <String> getCurrentUID() async {
    String uid = await _auth.currentUser!.uid.toString();
    return uid;
  }


  FutureBuilder<DocumentSnapshot<Object?>> getUserName() {
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
          return Text("${data['user_name']} ",
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

  FutureBuilder<DocumentSnapshot<Object?>> getUserTest() {
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
          return Text("${data['test_result']} ",
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),);
        }

        return const Text("");
      },
    );
  }

}



