import 'package:flutter/material.dart';
import 'package:i_job/material/colors.dart';

class backgroundwidget extends StatelessWidget {
  const backgroundwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 2.3,
      origin: Offset(45, -90),
      child: Container(
        margin: EdgeInsets.only(
          left: 70,
          top: 60,
        ),
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(75),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              colors: kBackgroundColorMix,
            )
        ),
      ),
    );
  }
}
