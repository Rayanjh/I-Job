import 'package:flutter/material.dart';
import 'material/colors.dart';
import 'package:i_job/screens/homepage.dart';

void main() {
  runApp(const iJob());
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
      home: homepage(),
    );
  }
}
