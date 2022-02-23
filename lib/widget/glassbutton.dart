import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:i_job/animation/Fade.dart';
import 'package:i_job/material/colors.dart';
import 'package:i_job/screens/about.dart';
import 'package:i_job/screens/listedjob.dart';
import 'package:i_job/screens/recenttest.dart';
import 'package:i_job/screens/settings.dart';

class glassbutton extends StatefulWidget {
  @override
  _glassbuttonState createState() => _glassbuttonState();
}

class _glassbuttonState extends State<glassbutton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                //listedjob
                Navigator.push(context,Fade(widget: listedjob()));
              },
              child: GlassContainer(
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Icon(
                      Icons.list_alt,
                      color: old_kColor0,
                      size: 45,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Listed Job',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: old_kColor0,
                      ),
                    ),
                  ],
                ),
                height: 100,
                width: 170,
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
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,Fade(widget: recentTest()));
              },
              child: GlassContainer(
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Icon(
                      Icons.history,
                      color: old_kColor1,
                      size: 45,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Recent Test',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: old_kColor1,
                      ),
                    ),
                  ],
                ),
                height: 100,
                width: 170,
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
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,Fade(widget: settings()));
              },
              child: GlassContainer(
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Icon(
                      Icons.settings,
                      color: old_kColor5,
                      size: 45,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: old_kColor5,
                      ),
                    ),
                  ],
                ),
                height: 100,
                width: 170,
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
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,Fade(widget: about()));
              },
              child: GlassContainer(
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Icon(
                      Icons.alternate_email,
                      color: old_kColor3,
                      size: 45,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'About',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: old_kColor3,
                      ),
                    ),
                  ],
                ),
                height: 100,
                width: 170,
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
              ),
            ),
          ],
        ),
      ],
    );
  }
}
