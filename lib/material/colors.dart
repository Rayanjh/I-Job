import 'dart:math';

import 'package:flutter/material.dart';

bool x = false;


const kBackgroundColor = Color(0xFF373568);
const kBackgroundColorMix = [Color(0xFFFFE130),Color(0xFFFF8484)];
const kmenuBackgroundColor = Color(0xFF3D416E); //0xFF373956



const menuBackgroundColor2 = Color(0xFFB8DBD9);
const kbutton = Color(0xFFFF8AAB);
const kColor1 = Color(0xFF0F1108);


//0xFF2D2F41
const old_kBackgroundColor = Color(0xFF2D2F41);
const old_menuBackgroundColor = Color(0xFF242634);
const old_kColor0 = Color(0xFFFFC677);
const old_kColor1 = Color(0xFF77DDFF);
const old_kColor2 = Color(0xFFEAECFF);
const old_kColor3 = Color(0xFF748EF6);
const old_kColor4 = Color(0xFFC279FB);
const old_kColor5 = Color(0xFFEA74AB);
const old_kColor6 = Color(0xFF707070);
const old_kColor7 = Color(0xFF444974);
const falsee = [Color(0xFF707070),Color(0xFFEAECFF)];



Color generateRandomColor1() {
  const predefinedColors = [
     Color(0xFFFF8484),
     Color(0xFFFFE130),
     Color(0xFF63FFD5),
     Color(0xFFFFB463),
     Color(0xFF5FC6FF)
  ];
  Random random = Random();
  return predefinedColors[random.nextInt(predefinedColors.length)];
}
Color generateRandomColor2() {
  const predefinedColors = [
    Color(0xFFFF5DCD),
    Color(0xFFFFA738),
    Color(0xFF61A3FE),
    Color(0xFFFE6197),
    Color(0xFF6448FE),
  ];
  Random random = Random();
  return predefinedColors[random.nextInt(predefinedColors.length)];
}



class GradientColors {
  final List<Color> colors;
  GradientColors(this.colors);

  static List<Color> sky = [Color(0xFF6448FE), Color(0xFF5FC6FF)];
  static List<Color> sunset = [Color(0xFFFE6197), Color(0xFFFFB463)];
  static List<Color> sea = [Color(0xFF61A3FE), Color(0xFF63FFD5)];
  static List<Color> mango = [Color(0xFFFFA738), Color(0xFFFFE130)];
  static List<Color> fire = [Color(0xFFFF5DCD), Color(0xFFFF8484)];

}

class GradientTemplate {
  static List<GradientColors> gradientTemplate = [
    GradientColors(GradientColors.sky),
    GradientColors(GradientColors.sunset),
    GradientColors(GradientColors.sea),
    GradientColors(GradientColors.mango),
    GradientColors(GradientColors.fire),
  ];
}