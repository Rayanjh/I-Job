import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:i_job/material/colors.dart';
import 'package:i_job/widget/backgroundwidget.dart';
import 'package:i_job/UserProfile/userSetup.dart';
import 'package:i_job/widget/glassbutton.dart';

class recentTest extends StatelessWidget {
  const recentTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
          children: const [
          backgroundwidget(),
      Padding(
        padding: EdgeInsets.fromLTRB(25, 50, 0, 0),
        child: Text(
          'Recent Test',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
            SizedBox(),
            
  ],
    ),
    );
  }
}
