import 'package:flutter/material.dart';
import 'package:i_job/material/colors.dart';
import 'package:i_job/widget/backgroundwidget.dart';

class listedjob extends StatelessWidget {
  const listedjob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          backgroundwidget(),
          Container(
            child: Text(
                'Listed Job here'
            ),
          ),
        ],
      ),
    );
  }
}
