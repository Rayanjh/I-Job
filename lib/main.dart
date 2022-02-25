import 'package:flutter/material.dart';
import 'package:i_job/screens/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:i_job/screens/login.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(iJob());
}

class iJob extends StatefulWidget {
  const iJob({Key? key}) : super(key: key);

  @override
  _iJobState createState() => _iJobState();
}

class _iJobState extends State<iJob> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iJobDemo',
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
