import 'package:flutter/material.dart';
import 'package:i_job/material/colors.dart';
import 'package:i_job/widget/backgroundwidget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:i_job/widget/glassList.dart';
class recentTest extends StatelessWidget {
  const recentTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
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
                stream: FirebaseFirestore.instance.collection('User_Info').snapshots() ,
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
                                title: document['test_result'],
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
    );
  }
}
