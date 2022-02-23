import 'package:flutter/material.dart';
import 'package:i_job/material/colors.dart';
import 'package:i_job/widget/backgroundwidget.dart';
import 'package:i_job/widget/glassList.dart';

class settings extends StatelessWidget {
  const settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Stack(
            children: [
              backgroundwidget(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 50, 0, 15),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  glassList(inputText: 'Setting',onTap: () {},borderRadius: 10,),
                  glassList(inputText: 'Setting',onTap: () {},borderRadius: 10,),
                  glassList(inputText: 'Setting',onTap: () {},borderRadius: 10,),
                  glassList(inputText: 'Setting',onTap: () {},borderRadius: 10,),
                  glassList(inputText: 'Setting',onTap: () {},borderRadius: 10,),

                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
