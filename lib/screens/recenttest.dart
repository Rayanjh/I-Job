import 'package:flutter/material.dart';
import 'package:i_job/material/colors.dart';
import 'package:i_job/widget/backgroundwidget.dart';
class recentTest extends StatelessWidget {
  const recentTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(

        // change the Height and width to mediaQuery
        // change the Height and width to mediaQuery
        children: [

          backgroundwidget(),
          Container(
            child: Text(
                'Recent test'
            ),
          ),
        ],
      ),
    );
  }
}
