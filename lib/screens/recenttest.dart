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
        children: [
          backgroundwidget(),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 50, 0, 0),
            child: Text(
              'Recent Test',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 120, bottom: 30),
            child: GlassContainer(
              child: userSetup().getUserTest(),
              height: 200,
              width: 400,
              gradient: LinearGradient(
                colors: [
                  kmenuBackgroundColor.withOpacity(0.40),
                  kmenuBackgroundColor.withOpacity(0.10),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderGradient: LinearGradient(
                colors: [
                  kmenuBackgroundColor.withOpacity(0.60),
                  kmenuBackgroundColor.withOpacity(0.10),
                  kColor1.withOpacity(0.05),
                  kColor1.withOpacity(0.30),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.39, 0.40, 1.0],
              ),
              blur: 40,
              borderRadius: BorderRadius.circular(24.0),
              borderWidth: 1.0,
              elevation: 3.0,
              shadowColor: kmenuBackgroundColor.withOpacity(0.20),
              alignment: Alignment.center,
              frostedOpacity: 0.12,
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
            ),
          )
        ],
      ),

    );
  }
}
