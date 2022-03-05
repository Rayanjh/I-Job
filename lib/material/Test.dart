StreamBuilder(
stream:  FirebaseFirestore.instance.collection('JobsList').snapshots(),
builder: (BuildContext context , AsyncSnapshot<QuerySnapshot> snapshot){
if(!snapshot.hasData){
return Center(
child: CircularProgressIndicator(),
);
}


return ListView(
children: snapshot.data!.docs.map((document){

return Center(
child: Container(
width: MediaQuery.of(context).size.width/1.2,
height: MediaQuery.of(context).size.width/6,
child: Column(
children: [
Text('Title'+document['Title']),
Text('Title'+document['Descreption']),
Text('Title'+document['Link']),
],
),
),
);

}).toList(),
);
}
),










////////////////////////////////


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

StreamBuilder(
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
})
