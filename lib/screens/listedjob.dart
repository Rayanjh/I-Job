import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:i_job/material/colors.dart';
import 'package:i_job/widget/backgroundwidget.dart';
import 'package:i_job/widget/glassList.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';

class listedjob extends StatefulWidget {
  const listedjob({Key? key}) : super(key: key);

  @override
  State<listedjob> createState() => _listedjobState();
}

class _listedjobState extends State<listedjob> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,

      body:Stack(
        children: [
          backgroundwidget(),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 50, 0, 0),
            child: Text(
              'Listed Job',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 100, bottom: 30),
            child: StreamBuilder(
                stream: FirebaseFirestore.instance.collection('JobsList').snapshots() ,
                builder: (BuildContext context , AsyncSnapshot<QuerySnapshot> snapshot){
                  if(!snapshot.hasData){
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }



                  return ListView(
                    children: snapshot.data!.docs.map((document){

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.22,
                            child: glassList(
                                title: document['Title'],
                                description: document['Description'],
                                link: document['Link']),
                          ),
                        ],
                      );

                    }).toList(),
                  );
                }),
          ),
        ],
      ),









      /*StreamBuilder(
          stream: FirebaseFirestore.instance.collection('JobsList').snapshots(),

          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView(
              children: snapshot.data!.docs.map((document) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      // change the Height and width to mediaQuery
                      // change the Height and width to mediaQuery
                      children: [
                        Stack(
                          children: [
                            backgroundwidget(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 50, 0, 15),
                              child: Text(
                                'Listed Job',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.22,
                      child: ListView(
                        children: [
                          glassList(
                              title: document['Title'],
                              description: document['Descreption'],
                              link: document['Link']),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
            );
          }),*/
    );
  }
}
