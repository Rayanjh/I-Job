import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:i_job/material/colors.dart';

class glassList extends StatelessWidget {
  final String inputText;
  VoidCallback? onTap;
  glassList({Key? key,
    required this.inputText,
    this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GlassContainer(
        child: Text(
            inputText,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        height: 50,
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
