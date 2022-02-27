import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';




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






