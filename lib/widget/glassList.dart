import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:i_job/material/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class glassList extends StatelessWidget {
  final String title;
  final String description;
  final String link;
  VoidCallback? onTap;

  glassList({Key? key,
    required this.title,
    required this.description,
    required this.link,

    this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () async{
        var url = link;
        if (await canLaunch(url)){
          await launch(url);
        }else{
          throw "Can not load URL";
        }
      },
      child: GlassContainer(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Image.asset(
                  'lib/material/121.png',
                height: size.height*0.2,
                width: size.width*0.2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: size.height * 0.003,),
                    Expanded(
                        child: Container(
                          child: Text(
                            description,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        height: size.height*0.2,
        width: double.infinity,
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
        borderRadius: BorderRadius.circular(25),
        borderWidth: 1.0,
        elevation: 3.0,
        shadowColor: kmenuBackgroundColor.withOpacity(0.20),
        alignment: Alignment.center,
        frostedOpacity: 0.12,
        margin: EdgeInsets.all(3.0),
        padding: EdgeInsets.all(8.0),
      ),
    );
  }
}
